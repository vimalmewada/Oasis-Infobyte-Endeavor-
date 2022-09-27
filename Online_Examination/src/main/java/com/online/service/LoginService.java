package com.online.service;

import com.online.examDto.LoginDto;

public class LoginService {
	LoginDto dto=new LoginDto();
			public Boolean loginCheck( String username, String password) {
				String user_name1="vimalmewada.vm@gmail.com";
				String user_name2="vimalmewada100@gmail.com";
				
				String password1 ="123";
				String password2 ="0000";
				if(username.equals(user_name1) && password.equals(password1)) {
					return true;
				}else if(username.equals(user_name1) && password.equals(password1)) {
					return true;
				}else {
					return false;
				}
				
				
			
			
			}
}
