package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// MVC 할때는 모델에 한다.
		// 파라미터값 받기
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String math = request.getParameter("math");
		
		int ko = Integer.parseInt(kor);
		int en = Integer.parseInt(eng);
		int ma = Integer.parseInt(math);
		
		int sum = ko + en + ma ;
		double avg = (int)(sum/3.0*10)/10.0;
		String hak = "";
		if(avg >=90) {
			hak = "A학점";
		}else if(avg>=80) {
			hak = "B학점";
		}else if(avg>=70) {
			hak = "C학점";
		}else {
			hak="F학점";
		}
		
		out.println("<h2>성적보기</h2>");
		out.println("<p>이름 : " + name + "</p>");
		out.println("<p>총점 : " + sum + "</p>");
		out.println("<p>평균 : " + avg + "</p>");
		out.println("<p>학점 : " + hak + "</p>");
	}

}
