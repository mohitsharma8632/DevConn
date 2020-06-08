package com.actions;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pojo.User;

@Component
public class UserDao {
	
@Autowired	
JdbcTemplate jt;


public int save(User u) {
	try {
	String s="insert into user values (?,?,?)";
	PreparedStatement ps=Getc.connection().prepareStatement(s);
	ps.setString(1, u.getName());
	ps.setString(2, u.getEmail());
	ps.setString(3, u.getPassword());
	return ps.executeUpdate();
	}catch(Exception err) {System.out.println(err);}
	return 0;}

public User uget(String email) {
	User u=new User();
	try {
	String s="select * from user where email='"+email+"'";
	Statement stmt=Getc.connection().createStatement();
	ResultSet rs=stmt.executeQuery(s);
	if(rs.next()) {
	u.setName(rs.getString(1));
	u.setEmail(rs.getString(2));
	u.setPassword(rs.getString(3));	
	}
	}catch(Exception err) {System.out.println(err);}
	return u;}


}
