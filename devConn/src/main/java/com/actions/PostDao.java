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

@Component
public class PostDao {
	 

	public int save(Post p) {
		try {
		String s="insert into poster values(?,?,?,NULL)";
		PreparedStatement ps=Getc.connection().prepareStatement(s);
		ps.setString(1, p.getName());
		ps.setString(2, p.getEmail());
		ps.setString(3, p.getPost());
		return ps.executeUpdate();
	}catch(Exception err) {
		System.out.println(err);
	}return 0;
		}

	public Post pget(int postid) {
		Post p=new Post();
		try {
			String s="select * from poster where postid="+postid+ " ";
			Statement stmt=Getc.connection().createStatement();
			ResultSet rs=stmt.executeQuery(s);
			if(rs.next()) {
				p.setName(rs.getString(1));
				p.setEmail(rs.getString(2));
				p.setPost(rs.getString(3));
				p.setPostid(rs.getInt(4));
			}
		}catch(Exception err) {
		System.out.println(err);
	}
		return p;
		}
	
	public List<Post> pGetAll() {
		ArrayList<Post> arrays=new ArrayList<Post>();
		try {
		String s="select * from poster order by postid desc ";
		Statement stmt=Getc.connection().createStatement();
		ResultSet rs=stmt.executeQuery(s);
		while(rs.next()) {
		Post p=new Post();
			p.setName(rs.getString(1));
			p.setEmail(rs.getString(2));
			p.setPost(rs.getString(3));
			p.setPostid(rs.getInt(4));
	arrays.add(p);
		}}catch(Exception err) {
			System.out.println(err);
		}return arrays;
	}
	}

