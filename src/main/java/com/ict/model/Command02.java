package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command02 implements Command{
	// 반환점이 String 결과를 view 에 보여준다
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 일처리 (운세 구하기)
		int lucky = (int)(Math.random() * 101);
		request.setAttribute("luck", lucky);
		
		// return "결과를 보여줄 jsp 파일 위치"
		return "view/ex13_res02.jsp";
	}
	
}
