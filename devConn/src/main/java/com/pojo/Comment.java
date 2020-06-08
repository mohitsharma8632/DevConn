package com.pojo;

public class Comment {

	private String name;
	private String email;
	private String comment;
	private int postid;
	private int commentid;
	
	public Comment(String name, String email, String comment, int postid) {
	
		this.name = name;
		this.email = email;
		this.comment = comment;
		this.postid = postid;
	}
	public Comment() {
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment( String comment) {
		this.comment = comment;
	}
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
	}
	public int getCommentid() {
		return commentid;
	}
	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}
	
	
}
