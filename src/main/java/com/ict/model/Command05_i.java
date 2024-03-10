package com.ict.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.VO_i;

public class Command05_i implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리
		// 배열, 컬렉션
		// DB 에서 컬렉션, Object, 숫자로 결과가 올 수 있다.
		
		String[] hobby = request.getParameterValues("hobby");
		request.setAttribute("hobby", hobby);
		
		// 강제로 DB 에서 처리한 것 처럼 VO 에 정보를 넣자 
		VO_i vo = new VO_i("1", "둘리", "24", "서울");
		request.setAttribute("vo", vo);
		
		VO_i vo1 = new VO_i("2", "도우너", "2", "경기");
		VO_i vo2 = new VO_i("3", "마이콜", "34", "대구");
		VO_i vo3 = new VO_i("4", "희동이", "15", "대전");

		// 강제로 DB 에서 처리한 것 처럼 List<VO> 에 정보를 넣자
		List<VO_i> list = new ArrayList<VO_i>();
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		
		request.setAttribute("list", list);
		return "view/ex14_res2_i.jsp";
	}
	
}
