package com.lcomputerstudy.example.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	@Autowired BoardService boardservice;
	@Autowired UserService userservice;

	@RequestMapping("/")
	public String home(Model model) {
		
		List<Board> list =boardservice.selectBoardList();
		model.addAttribute("list", list);
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
}
