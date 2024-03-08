package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx"); // 삭제하려면 idx 넘겨야함
		String pwd = request.getParameter("pwd"); // 삭제하려면 pwd 넘겨서 비교
		
		request.setAttribute("idx", idx); // request 에 저장
		request.setAttribute("pwd", pwd); // request 에 저장
		return "guestbook/delete.jsp";
	}

}
