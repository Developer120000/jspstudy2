package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.GuestDAO;
import com.ict.db.GuestVO;

public class UpdateOkCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		
		GuestVO gvo = new GuestVO();
		gvo.setIdx(idx);
		gvo.setName(request.getParameter("name"));
		gvo.setSubject(request.getParameter("subject"));
		gvo.setContent(request.getParameter("content"));
		gvo.setEmail(request.getParameter("email"));
		
		int result = GuestDAO.getUpdate(gvo);
		return "Guest?cmd=onelist&idx=" + idx; // Guest 들려서 스위치문 cmd=OneListCommand 타고 oneListCommand 로 감  
	}

}
