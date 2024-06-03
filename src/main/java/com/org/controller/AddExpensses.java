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
import com.org.dto.Expensses;
import com.org.dto.User;

import com.org.dto.User;
@WebServlet("/addExpensses")
public class AddExpensses extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doPost(req, resp);
	UserDao dao = new UserDao();
	Expensses expensses = new Expensses();
	
	HttpSession session = req.getSession();
	User userData =(User)session.getAttribute("UserData");
	
	expensses.setNameOfExpensses(req.getParameter("nameOfExpensses"));
	expensses.setPrice(Float.parseFloat(req.getParameter("price")));
	expensses.setDate(req.getParameter("date"));
	expensses.setTime(req.getParameter("time"));
	
	List<Expensses> list = new ArrayList();
	list.add(expensses);
	
	userData.setExpensses(list);
	expensses.setUser(userData);
	
	dao.saveAndUpdateUser(userData);
	
	session.setAttribute("addExp", "EXPENSSES ADDED SUCCESSFULLY");
	resp.sendRedirect("Home.jsp");
}
}
