package com.heiban.dao;

import com.mongodb.MongoClient;

public class MongoClientDao {
	private MongoClient mongoClient;
	
	public MongoClientDao() {
		try {
			this.mongoClient = new MongoClient("localhost", 27017);
		}
		catch (Exception e) {
			System.err.println(e.getClass().getName() + ":" + e.getMessage());
		}
	}

	public MongoClient getMongoClient() {
		return mongoClient;
	}
}
