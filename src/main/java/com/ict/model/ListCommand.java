package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;

public class ListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// guestbook 테이블의 모든 정보 다 가져와야 한다.
		// DB 처리는 MyBatis 이다.
		// 오라클라이브러리 와 MyBatis 라이브러리를 WEB-INF 안 lib 에 넣자.
		// 자기이름 폴더 안 util 폴더 안 mybatis-3.5.14.jar, ojdbc11.jar 복붙
		
		List<GuestVO> list = GuestDAO.getList();
		request.setAttribute("list", list);
		
		return "guestbook/list.jsp";
	}

}
