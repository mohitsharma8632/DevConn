package com.actions;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pojo.Post;
import com.pojo.Profile;

@Component
public class ProfileDao {


public int save(Profile p) {
	try {
	String s="insert into profile values (?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=Getc.connection().prepareStatement(s);
	ps.setString(1, p.getEmail());
	ps.setString(2, p.getStatus());
	ps.setString(3, p.getCompany());
	ps.setString(4, p.getLocation());
	ps.setString(5, p.getSkill());
	ps.setString(6, p.getGitname());
	ps.setString(7, p.getBio());
	ps.setString(8, p.getName());
	ps.setString(9, p.getSocial());
	return ps.executeUpdate();
}catch(Exception err) {
	System.out.println(err);
}return 0;
	}
public int delete(String email) {
	
	try {
		String s="delete from  profile where email=? ";
		PreparedStatement ps=Getc.connection().prepareStatement(s);
		ps.setString(1, email);
		return ps.executeUpdate();
	}catch(Exception err) {
		System.out.println(err);
	}return 0;

}

public Profile pget(String email) {

Profile p=new Profile();
try {
	String s="select * from profile where email='"+email+"'";
	Statement stmt=Getc.connection().createStatement();
	ResultSet rs=stmt.executeQuery(s);
	if(rs.next()) {
		p.setEmail(rs.getString(1));
		p.setStatus(rs.getString(2));
		p.setCompany(rs.getString(3));
		p.setLocation(rs.getString(4));
		p.setSkill(rs.getString(5));
		p.setGitname(rs.getString(6));
		p.setBio(rs.getString(7));
		p.setName(rs.getString(8));
		p.setSocial(rs.getString(9));
	}
}catch(Exception err) {
System.out.println(err);
}
return p;
}









public List<Profile> pGetAll() {
	ArrayList<Profile> arrays=new ArrayList<Profile>();
	try {
	String s="select * from profile order by rand() limit 50  ";
	Statement stmt=Getc.connection().createStatement();
	ResultSet rs=stmt.executeQuery(s);
	while(rs.next()) {
Profile p=new Profile();
p.setEmail(rs.getString(1));
p.setStatus(rs.getString(2));
p.setCompany(rs.getString(3));
p.setLocation(rs.getString(4));
p.setSkill(rs.getString(5));
p.setGitname(rs.getString(6));
p.setBio(rs.getString(7));
p.setName(rs.getString(8));
p.setSocial(rs.getString(9));
arrays.add(p) ;
	}
}catch(Exception err) {System.out.println(err);}
	return arrays;

}

}
