package com.heiban.domain;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class MongoDBJDBC {
	public static void main(String[] args) {
		try {
			MongoClient mongoClient = new MongoClient("localhost", 27017);
			
			DB db = mongoClient.getDB("mydb");
			System.out.println("Connected to db successfully");
			boolean auth = db.authenticate("mydbUser", "123".toCharArray());
			System.out.println("Authentication: " + auth);
			
			DBCollection coll = db.getCollection("post");
			System.out.println("Collection post selected successfully");
			DBCursor cursor = coll.find();
			
			while(cursor.hasNext()) {
				System.out.println((String)cursor.next().get("title"));		
			}
		}
		catch (Exception e) {
			System.err.println(e.getClass().getName() + ":" + e.getMessage());
		}
	}
}
