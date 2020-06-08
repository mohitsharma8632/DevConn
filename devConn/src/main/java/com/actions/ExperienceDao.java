package com.actions;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pojo.Expe;

@Component
public class ExperienceDao {
	

	public int save(Expe e) {
		try {
		String s="insert into experience values(?,?,?,?,?,?,?,NULL)";
		PreparedStatement ps=Getc.connection().prepareStatement(s);
		ps.setString(1,e.getEmail() );
		ps.setString(2,e.getTitle() );
		ps.setString(3, e.getCompany());
		ps.setString(4, e.getLocation());
		ps.setString(5, e.getFrom());
		ps.setString(6, e.getTo());
		ps.setString(7, e.getDescription());
		return ps.executeUpdate();
		}catch(Exception err) {
		System.out.println(err);
	}
	return 0;
}
	
	
	public int delete(int exid) {
	try {
		String s="delete from experience where exid=?";
		PreparedStatement ps=Getc.connection().prepareStatement(s);
		ps.setInt(1, exid);
		return ps.executeUpdate();
	}catch(Exception err) {
		System.out.println(err);
	}
	return 0;
	}

	public List<Expe> eGetAll(String email) {
	ArrayList<Expe> arrays=new ArrayList<Expe>();
		try {
		String s="select * from experience where email='"+email+"'";
	Statement stmt=Getc.connection().createStatement();
	ResultSet rs=stmt.executeQuery(s);
	while(rs.next()) {
		Expe e=new Expe();
	e.setEmail(rs.getString(1));
	e.setTitle(rs.getString(2));
	e.setCompany(rs.getString(3));
	e.setLocation(rs.getString(4));
	e.setFrom(rs.getString(5));
	e.setTo(rs.getString(6));
	e.setDescription(rs.getString(7));
	e.setExid(rs.getInt(8));
	arrays.add(e);
		}}catch(Exception err) {
			System.out.println(err);
		}
	return arrays;
	}
	}
