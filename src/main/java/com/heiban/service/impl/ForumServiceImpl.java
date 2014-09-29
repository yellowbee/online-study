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
	
	
	public MongoClientDao getMongoClientDao() {
		return mongoClientDao;
	}

	@Autowired
	@Qualifier("mangoClientDao")
	public void setMongoClientDao(MongoClientDao mongoClientDao) {
		this.mongoClientDao = mongoClientDao;
		mongoClient = this.mongoClientDao.getMongoClient();
	}
	
	// sessionId is the fulfillment of a course during a specific semester
	@SuppressWarnings({ "deprecation", "unchecked" })
	public Set<DBObject> getForumThreadsBySessionId(String sessionId) {
		Set<DBObject> threads = new HashSet<DBObject>();
		
		DB db = mongoClient.getDB("forum");
		System.out.println("Connected to db successfully");
		boolean auth = db.authenticate("forumUser", "123".toCharArray());
		System.out.println("Authentication: " + auth);
		
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
		DB db = mongoClient.getDB("forum");
		System.out.println("Connected to db successfully");
		boolean auth = db.authenticate("forumUser", "123".toCharArray());
		System.out.println("Authentication: " + auth);
		
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
	
	@SuppressWarnings("deprecation")
	public Set<DBObject> getForumPostsByThreadSequence(int thread_seq) {
		Set<DBObject> result = new HashSet<DBObject>();
		
		DB db = mongoClient.getDB("forum");
		boolean auth = db.authenticate("forumUser", "123".toCharArray());
		System.out.println("Authentication: " + auth);
		
		DBCollection coll = db.getCollection("posts");
		DBObject query = new BasicDBObject("thread_seq", thread_seq);
		System.out.println("Collection post selected successfully");
		DBCursor cursor = coll.find(query);
		
		while(cursor.hasNext()) {
			result.add(cursor.next());		
		}
		
		return result;
	}
	
}
