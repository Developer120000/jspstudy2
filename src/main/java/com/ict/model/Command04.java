package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command04 implements Command{
	// 반환점이 String 결과를 view 에 보여준다
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리 ( 성적처리 )
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int sum = kor + eng + math;
		double avg = (int)(sum/3.0*10)/10.0;
		String hak = "";
		if(avg>=90) {
			hak = "A학점";
		}else if(avg>=80) {
			hak = "B학점";
		}else if(avg>=70) {
			hak = "C학점";
		}else {
			hak = "F학점";
		}
		
		request.setAttribute("name", name);
		request.setAttribute("sum", sum);
		request.setAttribute("avg", avg);
		request.setAttribute("hak", hak);
		
		return "view/ex14_res.jsp";
	}

}
