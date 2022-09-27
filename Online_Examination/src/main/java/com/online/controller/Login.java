package com.online.controller; 


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online.examDto.LoginDto;
import com.online.service.LoginService;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginService loginService = new LoginService();
	LoginDto dto=new LoginDto();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
System.out.println("Here Iam ");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		dto.setUser_name(username);
		dto.setPassword(password);
		Boolean login = loginService.loginCheck(username, password);
		if(login==true) {
			System.out.println("login sucess");
			//HttpSession session = request.getSession(true);
			//session.setAttribute("currentSessionUser", dto);
			response.sendRedirect("home.jsp");
		}else {
			//request.setAttribute("error", "Not a Valid Login Details !! Please try again");
			//RequestDispatcher rd = request.getRequestDispatcher("index.html");
			//rd.forward(request, response);
		}
		}
}
