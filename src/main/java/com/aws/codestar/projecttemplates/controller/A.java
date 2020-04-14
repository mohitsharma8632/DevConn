package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class A {
	
	@RequestMapping("landing")
	public ModelAndView ru() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("landing");
		return mv;
	}
	@RequestMapping("profile")
	public ModelAndView rua() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profile");
		return mv;
	}
	@RequestMapping("profiles")
	public ModelAndView rus() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("profiles");
		return mv;
	}
	@RequestMapping("post")
	public ModelAndView aru() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("post");
		return mv;
	}
	@RequestMapping("login")
	public ModelAndView rusa() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	@RequestMapping("feed")
	public ModelAndView r2u() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("feed");
		return mv;
	}
	@RequestMapping("register")
	public ModelAndView rddu() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register");
		return mv;
	}
	@RequestMapping("add-education")
	public ModelAndView dfru() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("add-education");
		return mv;
	}
	@RequestMapping("add-experience")
	public ModelAndView rddddu() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("add-experience");
		return mv;
	}
	@RequestMapping("create-profile")
	public ModelAndView r445u() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("create-profile");
		return mv;
	}
	@RequestMapping("edit-profile")
	public ModelAndView r0u() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("edit-profile");
		return mv;
	}
	@RequestMapping("dashboard")
	public ModelAndView rsdau() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("dashboard");
		return mv;
	}	
	
}
