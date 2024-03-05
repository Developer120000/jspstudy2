package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex12")
public class Ex12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		
		out.print("<h2>cmd : " + cmd + "</h2>");
		
//		Calendar now = Calendar.getInstance();
//		int year = now.get(Calendar.YEAR);
//		int month = now.get(Calendar.MONTH)+1;
//		int day = now.get(Calendar.DATE);
	//	
//		out.println("<h2>Ex11_1 페이지(오늘날짜구하기)</h2>");
//		out.print("<h2>" + year + ". " + month + ". " + day + "</h2");
	}

}
