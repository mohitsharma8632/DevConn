package com.actions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Getc {
	 private static Connection connection=null;
	    private static String a="jdbc:mysql://database-2.ckbdzqof8bkc.us-east-2.rds.amazonaws.com/dev";
	    private static String b="admin";
	    private static String c="saddayforyou";

	    public static Connection connection(){

	        if(connection==null) {
	            try {
	            	Class.forName("com.mysql.cj.jdbc.Driver");  
	                connection = DriverManager.getConnection(a, b, c);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	          return connection;
	        }
	        else
	        {
	        return connection;
	        }
	    }
}
