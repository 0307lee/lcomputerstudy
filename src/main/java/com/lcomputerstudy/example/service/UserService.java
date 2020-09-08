package com.lcomputerstudy.example.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.lcomputerstudy.example.domain.UserVO;

public interface UserService extends UserDetailsService {

	//�����б�
	public UserVO readUser(String username);
	
	//��������
	public void createUser(UserVO user);
	
	//���� ����
	public void createAuthorities(UserVO user);
	
	//��ť��Ƽ ���� ���
	Collection<GrantedAuthority> getAuthorities(String username);

}
