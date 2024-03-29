package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex07_b")
public class Ex07_b extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String op = request.getParameter("op");
		int su1 = Integer.parseInt(request.getParameter("s1"));
		int su2 = Integer.parseInt(request.getParameter("s2"));
		
		int result = 0;
		
		switch (op) {
		case "+": result = su1 + su2; break;
		case "-": result = su1 - su2; break;
		case "*": result = su1 * su2; break;
		case "/": 
			if(su2 == 0) {
				out.println("<h2>0 으로는 나눌수 없습니다.</h2>");
			}else{
				result = su1 / su2;
				out.println("<h3>");
				out.println("<p> 결과 : " + su1 + " " + op + " " + su2 + " = " + result + "</p>");
				out.println("</h3>");
			}
		}
		if(! op.equalsIgnoreCase("/")) {
			out.println("<h3>");
			out.println("<p> 결과 : " + su1 + " " + op + " " + su2 + " = " + result + "</p>");
			out.println("</h3>");
		}
	}

}
