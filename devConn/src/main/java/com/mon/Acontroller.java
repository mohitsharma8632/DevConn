package com.mon;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.actions.CommentDao;
import com.actions.EducationDao;
import com.actions.ExperienceDao;
import com.actions.PostDao;
import com.actions.ProfileDao;
import com.actions.UserDao;
import com.pojo.Comment;
import com.pojo.Education;
import com.pojo.Expe;
import com.pojo.Post;
import com.pojo.Profile;
import com.pojo.Social;



@Controller
public class Acontroller {


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
	
	
	@RequestMapping("myprofile")
	public ModelAndView ru88(HttpSession hSession)  {
		String email=(String) hSession.getAttribute("email");
		Profile p=profiledao.pget(email);
		ArrayList<Education> edulist=(ArrayList<Education>) educationdao.eGetAll(email);
		ArrayList<Expe> explist=(ArrayList<Expe>) experiencedao.eGetAll(email);
		ModelAndView mv=new ModelAndView();
		Social social=new Social();
		if(p.getSocial()!=null) {
		String[] socials=p.getSocial().split(",");
		social.setA(socials[0]);
		social.setB(socials[1]);
		social.setC(socials[2]);
		social.setD(socials[3]);
		social.setE(socials[4]);
		}
		mv.addObject("socials", social);
		mv.addObject("p", p);
		mv.addObject("edulist", edulist);
		mv.addObject("explist", explist);
		mv.setViewName("myprofile");
		return mv;
	}
	@RequestMapping("landing")
	public String ru()  {
		return "landing";
	}
	@RequestMapping("profile")
	public ModelAndView rua(String email) {
		System.out.println(email);
		Profile p=profiledao.pget(email);
		ArrayList<Education> edulist=(ArrayList<Education>) educationdao.eGetAll(email);
		ArrayList<Expe> explist=(ArrayList<Expe>) experiencedao.eGetAll(email);
		ModelAndView mv=new ModelAndView();
		Social social=new Social();
		if(p.getSocial()!=null) {
		String[] socials=p.getSocial().split(",");
		social.setA(socials[0]);
		social.setB(socials[1]);
		social.setC(socials[2]);
		social.setD(socials[3]);
		social.setE(socials[4]);
		}
		mv.addObject("socials", social);
		mv.addObject("p", p);
		mv.addObject("education", edulist);
		mv.addObject("explist", explist);
		System.out.println(p.getName());
	mv.setViewName("profile");
		return mv;
	}
	@RequestMapping("profiles")
	public ModelAndView rus() {
		ArrayList<Profile> profilelist=(ArrayList<Profile>) profiledao.pGetAll();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profiles");
		mv.addObject("profilelist", profilelist);
		return mv;
	}
	@RequestMapping("post")
	public ModelAndView aru(String postid) {
		int a=Integer.parseInt(postid);
		Post p=postdao.pget(a);
		ArrayList<Comment> comments=(ArrayList<Comment>) commentdao.eGetAll(a);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("post");
		mv.addObject("p", p);
		mv.addObject("comments", comments);
		return mv;
	}
	@RequestMapping("login")
	public String rusa() {
		return "login";
	}
	@RequestMapping("feed")
	public ModelAndView r2u() {
		ArrayList<Post> posts=(ArrayList<Post>) postdao.pGetAll();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("feed");
		mv.addObject("posts", posts);
		return mv;
	}
	@RequestMapping("register")
	public String rddu() {
		return "register";
	}
	@RequestMapping("add-education")
	public String dfru() {
		return "add-education";
	}
	@RequestMapping("add-experience")
	public String rddddu() {
		return "add-experience";
	}
	@RequestMapping("create-profile")
	public String r445u() {
		return "create-profile";
	}
	@RequestMapping("edit-profile")
	public String r0u() {
		return "edit-profile";
	}
	@RequestMapping("dashboard")
	public ModelAndView rsdau(HttpSession hSession) {
		String email=(String) hSession.getAttribute("email");
		ArrayList<Education> edulist=(ArrayList<Education>) educationdao.eGetAll(email);
		ArrayList<Expe> explist=(ArrayList<Expe>) experiencedao.eGetAll(email);
		System.out.println(explist.size());
		System.out.println(edulist.size());
		ModelAndView mv=new ModelAndView();
		mv.setViewName("dashboard");
		mv.addObject("edulist", edulist);
		mv.addObject("explist", explist);
		return mv;
	}	

	@RequestMapping("logout")
	public String rsda13u() {
		return "logout";
	}		



}
	

