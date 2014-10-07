package com.heiban.service.impl;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.heiban.dao.MongoClientDao;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

@Component("forumService")
public class ForumServiceImpl {
	private MongoClient mongoClient;
	private MongoClientDao mongoClientDao;
	private DB db;
	
	public MongoClientDao getMongoClientDao() {
		return mongoClientDao;
	}

	@Autowired
	@Qualifier("mangoClientDao")
	public void setMongoClientDao(MongoClientDao mongoClientDao) {
		this.mongoClientDao = mongoClientDao;
		mongoClient = this.mongoClientDao.getMongoClient();
		// 
		db = mongoClient.getDB("forum");
		System.out.println("Connected to db successfully");
		boolean auth = db.authenticate("forumUser", "123".toCharArray());
		System.out.println("Authentication: " + auth);
	}
	
	// sessionId is the fulfillment of a course during a specific semester
	public Set<DBObject> getForumThreadsBySessionId(String sessionId) {
		Set<DBObject> threads = new HashSet<DBObject>();
		
		DBCollection coll = db.getCollection("threads");
		DBObject query = new BasicDBObject("sessionId", sessionId);
		System.out.println("Collection post selected successfully");
		DBCursor cursor = coll.find(query);
		
		while(cursor.hasNext()) {
			DBObject dbo = cursor.next();
			String str = String.valueOf(Math.round((Double)(dbo.get("thread_seq"))));
			dbo.put("thread_seq", str);
			threads.add(dbo);		
		}
		
		return threads;
	}
	
	public DBObject getOneForumThreadByThreadSequence(int thread_seq) {		
		DBCollection coll = db.getCollection("threads");
		DBObject query = new BasicDBObject("thread_seq", thread_seq);
		System.out.println("Collection post selected successfully");
		DBCursor cursor = coll.find(query);
		if (cursor.hasNext()) {
			return cursor.next();
		}
		else {
			return null;
		}
	}

	public Set<DBObject> getForumPostsByThreadSequence(int thread_seq) {
		Set<DBObject> result = new HashSet<DBObject>();
		
		DBCollection coll = db.getCollection("posts");
		DBObject query = new BasicDBObject("thread_seq", thread_seq);
		System.out.println("Collection post selected successfully");
		DBCursor cursor = coll.find(query);
		
		while(cursor.hasNext()) {
			result.add(cursor.next());		
		}
		
		return result;
	}
	
	private int getNextSequenceValue(String collectionName) {
		DBCollection coll = db.getCollection("counters");
		DBObject query = new BasicDBObject("_id", collectionName);
		DBCursor cursor = coll.find(query);
		DBObject result = cursor.next();
		if (result != null) {
			int next_seq = ((Double)result.get("sequence_value")).intValue() + 1;
			BasicDBObject q = new BasicDBObject("_id", "threads");
			BasicDBObject o = new BasicDBObject("sequence_value", (double)next_seq);
			BasicDBObject update_obj = new BasicDBObject("$set", o);
			coll.update(q, update_obj);
			return next_seq;
		}
		else {
			return -1;
		}
	}
	
	public void insertThread(String sessionId, String username, String title, String text) {
		DBCollection coll = db.getCollection("threads");
		double next_seq = (double)getNextSequenceValue("threads");
		BasicDBObject doc = new BasicDBObject("sessionId", sessionId).
								append("username", username).
								append("title", title).
								append("text", text).
								append("thread_seq", next_seq);
		coll.insert(doc);		
	}
}
