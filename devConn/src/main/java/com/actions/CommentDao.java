package com.actions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

import com.pojo.Comment;

@Component
public class CommentDao {

	
	public int save(Comment c) {
		try {
		String s="insert into comments values(?,?,?,?,NULL)";
		Connection conn=Getc.connection();
		PreparedStatement ps=conn.prepareStatement(s);
		ps.setString(1,c.getName() );
		ps.setString(2, c.getEmail());
		ps.setString(3, c.getComment());
		ps.setInt(4, c.getPostid());
		return ps.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public ArrayList<Comment> eGetAll(int postid) {
		ArrayList<Comment> arrys=new ArrayList<Comment>();
		String s="select * from comments where postid="+postid+" ";
		try {
		Statement stmt=Getc.connection().createStatement();
		ResultSet rs=stmt.executeQuery(s);
		while(rs.next()) {
			Comment c=new Comment();
			c.setName(rs.getString(1));
			c.setEmail(rs.getString(2));
			c.setComment(rs.getString(3));
			c.setPostid(rs.getInt(4));
			c.setCommentid(rs.getInt(5));			
			arrys.add(c);
		}
}
	catch(Exception e)	
		{
		System.out.println(e);
		}
		return arrys;
	}


}
