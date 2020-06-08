package com.mon;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.actions.*;
import com.pojo.*;


@MultipartConfig
@Controller
public class Bcontrollers {

	@Autowired
	UserDao userdao;
	
	@Autowired
	CommentDao commentdao;
	
	@Autowired
	PostDao postdao;
	
	@Autowired
	ProfileDao profiledao;
	
	@Autowired
	EducationDao educationdao;
	
	@Autowired
	ExperienceDao experiencedao;
	
	@RequestMapping("RegisterControl")
	public String register(User u,String password2, HttpSession session ) throws IOException  {
		int i=0;
		if(u.getPassword().equals(password2))
		 i=userdao.save(u);
		if(i==1) {  
		      session.setAttribute("name",u.getName());  
	        session.setAttribute("email",u.getEmail());  
return ("create-profile");	
		}
		else
			return ("landing");			
	}
	
	@RequestMapping("SigninControl")
	public void signin(String email,String password, HttpSession session,HttpServletResponse hsr ) throws IOException  {
	System.out.println(email);
	
		User u =userdao.uget(email);
		System.out.println(u.getEmail());
		if(u.getEmail()!=null) {
		if(u.getPassword().equals(password)) {
	        session.setAttribute("email",email);  
	        session.setAttribute("name",u.getName());  
	    hsr.sendRedirect("dashboard");
		}
		else {	hsr.sendRedirect("login");	
		}}
		else {	hsr.sendRedirect("login");
		}	
		
	}
	
	
	
	@RequestMapping("poster")
	public void postmaker(String poste, HttpSession session,HttpServletResponse hsr ) throws IOException  {
String email=(String)  session.getAttribute("email");
String name=(String)  session.getAttribute("name");
Post p=new Post(name,email,poste);
postdao.save(p);
		hsr.sendRedirect("feed");
	}

	
	@RequestMapping("commenter")
	public void commenter(String comment, String postid, HttpSession session ,HttpServletResponse hsr ) throws IOException  {
int pos=Integer.parseInt(postid);
		String email=(String)  session.getAttribute("email");
String name=(String)  session.getAttribute("name");
Comment c=new Comment(name,email,comment,pos);
commentdao.save(c);
		hsr.sendRedirect("post?postid="+pos);
	}
	
	
	
	
	@RequestMapping("profilechng")
	public void profilechange(Profile p,Social s, HttpSession session ,HttpServletResponse hsr) throws IOException, ServletException  {
		String email=(String) session.getAttribute("email");
		String name=(String) session.getAttribute("name");
		p.setName(name);
		p.setEmail(email);
		p.setSocial(s.toString());
		profiledao.delete(email);
		profiledao.save(p);
hsr.sendRedirect("myprofile");
	}

	
	
	
	@RequestMapping("CreateProfileControl")
	public void createprofile(Profile p,Social s, HttpSession session,HttpServletResponse hsr ) throws IOException, ServletException  {
		String email=(String) session.getAttribute("email");
		String name=(String) session.getAttribute("name");
		p.setName(name);
		p.setEmail(email);
		p.setSocial(s.toString());
		int i=profiledao.save(p);
		if(i==1) {
hsr.sendRedirect("dashboard");
		}
else {
	hsr.sendRedirect("create-profile");
	
}		
	}

	@RequestMapping("experienceAdder")
	public void createprofile(Expe e, HttpSession session,HttpServletResponse hsr ) throws IOException, ServletException  {
		String email=(String) session.getAttribute("email");
		e.setEmail(email);
		experiencedao.save(e);		
		hsr.sendRedirect("dashboard");
	}

	@RequestMapping("educationAdder")
	public void createprofile(Education e, HttpSession session,HttpServletResponse hsr ) throws IOException, ServletException  {
		String email=(String) session.getAttribute("email");
		e.setEmail(email);
		educationdao.save(e);		
hsr.sendRedirect("dashboard");
	}

	@RequestMapping("deleteexe")
	public void deleteexperience(String exid, HttpSession session ,HttpServletResponse hsr) throws IOException, ServletException  {
		int id=Integer.parseInt(exid);
		System.out.println(exid);	
		experiencedao.delete(id);
hsr.sendRedirect("dashboard");
	}
	
	@RequestMapping("deleteedu")
	public void deleteeducation(String edid,HttpServletResponse hsr ) throws IOException, ServletException  {
		int id=Integer.parseInt(edid);
		educationdao.delete(id);
		hsr.sendRedirect( "dashboard");
		}
	
	
	
	@RequestMapping("upload")
	public String upoadimg(@RequestParam CommonsMultipartFile file, HttpSession session) throws IOException  {

		String email=(String) session.getAttribute("email");
		if(file!=null) {
			Serve.name(email);
			try{
				 Connection conn=Getc.connection();
				 	            InputStream is = file.getInputStream();
					            System.out.println(is.toString());
							    PreparedStatement ps = conn.prepareStatement("insert into pic values(?,?)");
							   ps.setString(1, email);
							    ps.setBlob(2, is);
					 ps.executeUpdate();
							}
							catch(Exception e){
								e.printStackTrace();
							}	
		}
	return ("landing");
	}

}
