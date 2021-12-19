package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.VO.PcommentVO;
import com.shop.service.PcommentService;

public class PcommentController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String job = req.getParameter("job");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String pname = req.getParameter("pName");
		
		PcommentVO pvo = new PcommentVO();
		pvo.setPcommentPname(pname);
		pvo.setPcommentWriter(writer);
		pvo.setPcommentCont(content);
		
		System.out.println(pname);
		PcommentService service = new PcommentService();
		service.insert(pvo);
		
		
		req.getRequestDispatcher("productSearch.do").forward(req, res);

	}

}
