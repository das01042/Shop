package com.shop.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.VO.memberVO;
import com.shop.service.memberService;

public class LoginController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("id");
		String password =req.getParameter("password");
		


		memberService service = new memberService();
		memberVO vo = service.loginCheck(id, password);
		HttpSession session = req.getSession();
	
		
		if(vo!=null) {
			//index.jsp
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", vo.getName());
			req.getRequestDispatcher("index.jsp").forward(req, res);
		}else {
			//login.jsp
			res.setContentType("text/html; charset=utf-8");
			PrintWriter	out = res.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호가 틀립니다.'); "
					+ "location.href='/shoppingmall/login.jsp';</script>");
			out.flush();
			
		}
	}

}
