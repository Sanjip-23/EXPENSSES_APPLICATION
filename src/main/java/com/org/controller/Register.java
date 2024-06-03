package com.org.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/register")
public class Register extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doPost(req, resp);
	
	User user = new User();
	
	user.setName(req.getParameter("name"));
	user.setAge(Integer.parseInt(req.getParameter("age")));
	user.setAddress(req.getParameter("address"));
	user.setEmail(req.getParameter("email"));
	user.setPassword(req.getParameter("password"));
	
	UserDao dao = new UserDao();
	dao.saveAndUpdateUser(user);
	
	HttpSession session = req.getSession();
	session.setAttribute("success", "Registration Successful");
	resp.sendRedirect("register.jsp");
}
}
