package com.shop.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.VO.boardVO;
import com.shop.service.boardService;

public class boardInsertController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String writer = req.getParameter("writer");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		boardVO vo = new boardVO();
		
		vo.setContent(content);
		vo.setTitle(title);
		vo.setWriter(writer);
		
		
		
		boardService service = new boardService();
		
		if(writer.equals("")||title.equals("")||content.equals("")) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter	out = res.getWriter();
			out.println("<script>alert('다 채워주세요'); "
					+ "history.back();</script>");
			out.flush();
		}else {
			service.insert(vo);
			req.setAttribute("board", vo);
			req.getRequestDispatcher("board/boardOutput.jsp").forward(req, res);
		}
	}

}
