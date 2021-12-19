package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.service.memberService;

public class findPwController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//비밀번호 찾기
		memberService service = new memberService();
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pw = service.findPw(id, name, email);
		
		req.setAttribute("id", id);
		req.setAttribute("pw", pw);
		
		req.getRequestDispatcher("find/findPwOutput.jsp").forward(req, res);
	}

}
