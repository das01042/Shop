package com.shop.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.VO.memberVO;
import com.shop.service.memberService;

public class memberInsertController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		
		memberVO vo = new memberVO();
		
		vo.setId(id);
		vo.setName(name);
		vo.setPassword(password);
		vo.setEmail(email);
		
		//입력 처리
		memberService service =new memberService();
		if(id.equals("")||name.equals("")||password.equals("")||email.equals("")) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter	out = res.getWriter();
			out.println("<script>alert('다 채워주세요'); "
					+ "history.back() </script>");
			out.flush();
		}else {
			
		service.insert(vo);
		
		req.setAttribute("member", vo);
		req.getRequestDispatcher("member/memberOutput.jsp").forward(req, res);
		}
	}
}
