package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

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
		
		switch (cmd) {
			case "1":
				Calendar now = Calendar.getInstance();
				int year = now.get(Calendar.YEAR);
				int month = now.get(Calendar.MONTH)+1;
				int day = now.get(Calendar.DATE);
				
				out.println("<h2>Ex12 페이지(오늘날짜구하기)</h2>");
				out.print("<h2>" + year + ". " + month + ". " + day + "</h2");
			break;
			case "2": 
				int lucky = (int)(Math.random()*101);
				
				out.println("<h2>Ex12 페이지(운세 구하기)</h2>");
				out.print("<h2>" + lucky + "</h2");
				break;
			case "3": 
				out.println("<h2>Ex12 페이지(계산기)</h2>");

				int su1 = Integer.parseInt(request.getParameter("s1"));
				int su2 = Integer.parseInt(request.getParameter("s2"));
				String op = request.getParameter("op");
				try {
					int res = 0 ;
					switch (op) {
						case "+":  res = su1 + su2 ; break;
						case "-":  res = su1 - su2 ; break;
						case "*":  res = su1 * su2 ; break;
						case "/":  res = su1 / su2 ; break;
					}
					out.print("<h2>" + su1 + op + su2 + "=" + res +"</h2>");
				} catch (Exception e) {
					out.print("<h2>0 으로는 나눌 수 없습니다. </h2>");
				}
				break;
		}
	}
}
