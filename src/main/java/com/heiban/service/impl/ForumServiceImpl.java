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
	@SuppressWarnings("deprecation")
	public Set<Map<String, Object>> getForumThreadsBySessionId(String sessionId) {
		Set<Map<String, Object>> result = new HashSet<Map<String, Object>>();
		
		DB db = mongoClient.getDB("forum");
		System.out.println("Connected to db successfully");
		boolean auth = db.authenticate("forumUser", "123".toCharArray());
		System.out.println("Authentication: " + auth);
		
		DBCollection coll = db.getCollection("threads");
		DBObject query = new BasicDBObject("sessionId", sessionId);
		System.out.println("Collection post selected successfully");
		DBCursor cursor = coll.find(query);
		
		while(cursor.hasNext()) {
			result.add(cursor.next().toMap());		
		}
		
		return result;
	}
	
}
