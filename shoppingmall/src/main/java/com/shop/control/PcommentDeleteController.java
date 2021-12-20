package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.service.PcommentService;


public class PcommentDeleteController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String pname = req.getParameter("pName");
		String job = req.getParameter("job");
		String no = req.getParameter("pcomment_no");
		
		PcommentService service = new PcommentService();
		service.delete(no);
		
	
		req.getRequestDispatcher("productSearch.do").forward(req, res);
		
	}

}
