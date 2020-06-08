package com.actions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Serve {
public static void name(String email) {
	Connection conn=Getc.connection();
	int ai=0;
	try{
	{
		Statement ps=conn.createStatement();
	            ResultSet rs=ps.executeQuery("select * from pic where email = '"+email+"'");
	            if(rs.next()) 
	            ai=1;
	 }
	 if(ai==1)
				{
		            String sql="DELETE  FROM  pic	WHERE email ='"+email+"'";
		            Statement ps=conn.createStatement();
		           ps.executeUpdate(sql);
				}
	}catch (Exception e) {
	System.out.println(e);
	}
	
}
public static int check(String email) {
	Connection conn=Getc.connection();
	int ai=0;
	try{
	{
		Statement ps=conn.createStatement();
	            ResultSet rs=ps.executeQuery("select * from pic where email = '"+email+"'");
	            if(rs.next()) 
	            ai=1;
	return ai; 
	}
	}catch (Exception e) {
	System.out.println(e);
	}
	return 0;
}

}
