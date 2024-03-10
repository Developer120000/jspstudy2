package com.ict.model;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command01_h implements Command{
	// 반환점이 String 결과를 view 에 보여준다
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 일처리
		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH)+1;
		int day = now.get(Calendar.DATE);
		String result = year + "년" + month + "월" + day + "일";
		
		// 결과를 저장하자. (request 에 저장) => 그래서 controller 에서 페이지 이동을 forward 로 함
		// 로그인만 세션(옛날방식, 요즘은 토큰 방식 사용), 페이지, 리퀘스트 저장 방식 등이 있음
		request.setAttribute("res", result);
		
		// return "결과를 보여줄 jsp 파일 위치"
		return "view/ex13_res01_h.jsp";
	}
	
}
