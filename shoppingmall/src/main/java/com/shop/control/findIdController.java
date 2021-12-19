package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.service.memberService;

public class findIdController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//아이디 찾기
		memberService service = new memberService();
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String id = service.findId(name, email);
		
		req.setAttribute("id", id);
		
		req.getRequestDispatcher("find/findIdOutput.jsp").forward(req, res);
	}

}
