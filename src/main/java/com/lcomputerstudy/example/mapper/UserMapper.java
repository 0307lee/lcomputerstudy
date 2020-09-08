package com.lcomputerstudy.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.GrantedAuthority;

import com.lcomputerstudy.example.domain.UserVO;

@Mapper
public interface UserMapper {
//	�����б�
	public UserVO readUser(String username);
//	��������
	public void createUser(UserVO user);
//	�����б�
	public List<GrantedAuthority> readAuthorities(String username);
//	���ѻ���
	public void createAuthority(UserVO user);
}