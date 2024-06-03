package com.org.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.Salary;
import com.org.dto.User;

@WebServlet("/addSalary")
public class AddSalary extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doPost(req, resp);
	
	HttpSession session = req.getSession();
	User user = (User)session.getAttribute("UserData");
	UserDao dao = new UserDao(); 
	
	float salary = Float.parseFloat(req.getParameter("salary"));
	Salary sal = new Salary();
	sal.setUserSalary(salary);
	
	List<Salary> list = new ArrayList<Salary>();
	list.add(sal);
	
	sal.setUser(user);
	user.setSalary(list);
	
	dao.saveAndUpdateUser(user);
	
	session.setAttribute("salaryAdd", "Salary Added Successfully");
	resp.sendRedirect("addSalary.jsp");
}
}
