package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.Command01_h;
import com.ict.model.Command02_h;
import com.ict.model.Command03_h;

@WebServlet("/Ex13_h")
public class Ex13_h extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 모든 서버가 cmd 를 가지고 와야된다.
		String cmd = request.getParameter("cmd");
	/*
		switch (cmd) {
		case "1": 
			Command01 cmd01 = new Command01();
			String path = cmd01.exec(request, response);
			// request 의 정보를 가지고 가야 한다. => 포워딩 한다.
			request.getRequestDispatcher(path).forward(request, response);
			break;
		case "2": 
			Command02 cmd02 = new Command02();
			String path2 = cmd02.exec(request, response);
			// request 의 정보를 가지고 가야 한다. => 포워딩 한다.
			request.getRequestDispatcher(path2).forward(request, response);
			break;
		case "3": 
			Command03 cmd03 = new Command03();
			cmd03.exec(request, response);
			String path3 = cmd03.exec(request, response);
			// request 의 정보를 가지고 가야 한다. => 포워딩 한다.
			request.getRequestDispatcher(path3).forward(request, response);
			break;
	*/
			
			// 같은 코딩 축약 버전
			Command comm = null; // 인터페이스를 상속받은 변수
			switch (cmd) {
			case "1": comm = new Command01_h(); break;
			case "2": comm = new Command02_h(); break;
			case "3": comm = new Command03_h(); break;
			}
			// cmd 에 숫자에 따라 만들어지는 객체가 달라지기 때문에 한줄로 가능
			String path = comm.exec(request, response);
			request.getRequestDispatcher(path).forward(request, response);
	}


}
