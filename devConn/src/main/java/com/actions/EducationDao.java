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

import com.pojo.Education;


@Component
public class EducationDao {

		

	public int save(Education e) {
		
		try {
			String s="insert into education values(?,?,?,?,?,?,NULL)";
			PreparedStatement ps=Getc.connection().prepareStatement(s);
			ps.setString(1,e.getEmail() );
			ps.setString(2,e.getSchool() );
			ps.setString(3,e.getDegree() );
			ps.setString(4, e.getFrom());
			ps.setString(5, e.getTo());
			ps.setString(6,e.getDescription() );
			return ps.executeUpdate();
		}
		catch(Exception err) {
			System.out.println(err);
		}
	return 0;	
	}
	
	
	
	
	
	
	
	
	
	
	public int delete(int edid) {
		try {
		String s="delete from education where edid=? ";
	PreparedStatement ps=Getc.connection().prepareStatement(s);
	ps.setInt(1, edid);
	return ps.executeUpdate();
	}catch(Exception e) {
		System.out.println(e);
	}
		return 0;
		}

	public List<Education> eGetAll(String email) {
		ArrayList<Education> arrays=new ArrayList<Education>();
		try {
		String s="select * from education where email='"+email+"'";
		Statement stmt=Getc.connection().createStatement();
		ResultSet rs=stmt.executeQuery(s);
		while(rs.next()) {
	Education e=new Education();
	e.setEmail(rs.getString(1));
	e.setSchool(rs.getString(2));
	e.setDegree(rs.getString(3));
	e.setFrom(rs.getString(4));
	e.setTo(rs.getString(5));
	e.setDescription(rs.getString(6));
	e.setEdid(rs.getInt(7));
	arrays.add(e);
		}
	}
		catch(Exception err) {System.out.println(err);}
		return arrays;
	}

}
