//package com.finalproject.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//
//import com.finalproject.dao.MemberDAO;
//import com.finalproject.dto.CustomUserDetails;
//
//public class CustomUserDetailsService implements UserDetailsService {
//	
//	@Autowired
//	private MemberDAO memberDAO;
//
//	@Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		CustomUserDetails member = memberDAO.getMemberByUsername(username);
//		if(member==null) {
//			throw new UsernameNotFoundException(username);
//		}
//		return member;
//	}
//
//}
