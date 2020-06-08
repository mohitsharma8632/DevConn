package com.pojo;

public class Post {

	private String name;
	private String email;
	private String post;
	private int postid;
	
	public Post() {
	}
	
	public Post(String name, String email, String post) {
		this.name = name;
		this.email = email;
		this.post = post;
	}
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
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
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	
	
}
