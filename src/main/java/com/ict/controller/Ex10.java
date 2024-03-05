package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex10")
public class Ex10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("userName");
		String age = request.getParameter("userAge");
		
		out.println("<h2>현재 Ex10 페이지 입니다.");
		out.println("<h3><ul>");
		out.println("<li>" + name + "</li>");
		out.println("<li>" + age + "</li>");
		out.println("</ul></h3>");
		
		// 페이지 이동(리다이렉트, 포워딩)
		// => 현재 페이지에서 작업을 한 후 다른 페이지로 이동 (현재 페이지는 보이지 않음)
		// 리다이렉트 : 다른 페이지로 이동하면서 기존의 request / response 정보가 사라진다.
		//          즉, 파라미터도 사라진다.
		//          새로운 request / response 가 만들어진다.
		//          주소창에 최종 주소가 보인다.
		//          response.sendRedirect("주소");
		//  response.sendRedirect("Ex10_2");      // 서블릿으로 이동 
		//  response.sendRedirect("view/ex09.jsp"); // html, jsp로 이동 
		
		// 포워드 : 다른 페이지로 이동하면서 기존의 request / response 정보를 가지고 간다.
		//        파라미터도 사용 가능하다.
		//        주소창에는 최초 주소가 보인다.
		// request.getRequestDispatcher("주소").forward(request, response);
		request.getRequestDispatcher("Ex10_2").forward(request, response);
		
	}

}
