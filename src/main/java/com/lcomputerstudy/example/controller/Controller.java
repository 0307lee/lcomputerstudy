package com.lcomputerstudy.example.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.lcomputerstudy.example.domain.Board;
import com.lcomputerstudy.example.domain.User;
import com.lcomputerstudy.example.service.BoardService;
import com.lcomputerstudy.example.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {

	//private final Logger logger =LoggerFactory.getLogger(this.getClass());
	@Autowired BoardService boardservice;
	@Autowired UserService userservice;

	@RequestMapping("/")
	public String home(Model model) {
		
		List<Board> list =boardservice.selectBoardList();
		model.addAttribute("list", list);
//		logger.debug("debug");
//		logger.info("info");
//		logger.error("error");
		return "/index";
	}
	
	@RequestMapping("/beforeSignUp")
	public String beforeSignUp() {
		return "/signup";
	}
	
	@RequestMapping("/signup")
	public String signup(User user) {
		//비밀번호 암호와
		String encodedPassword =new BCryptPasswordEncoder().encode(user.getPassword());
		
		//유저데이터셋팅
		user.setPassword(encodedPassword);
		user.setAccoutNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));
		
		//유저생성
		userservice.createUser(user);
		//유저 권한 생성
		userservice.createAuthorities(user);
		
		return "/login";
	}
	
	@RequestMapping(value= "/login")
	public String beforeLogin(Model model) {
		return "/login";
	}
	
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/user/info")
	public String userinfo(Model model) {
		return "/user_info";
	}
	
	@RequestMapping(value= "/denied")
	public String denied(Model model) {
		return "/denied";
	}
	
	
	
	
}
