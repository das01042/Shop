package com.shop.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.VO.productVO;
import com.shop.service.productService;

public class productSearchToolController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String pname = req.getParameter("pName");
		
		productService service = new productService();
		List<productVO> vo  = service.searchTool(pname);
		req.setAttribute("product", vo);
		if(pname.equals("")) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter	out = res.getWriter();
			out.println("<script>alert('검색어를 입력하세요.'); "
					+ "history.back();</script>");
			out.flush();	
		}else {
		req.getRequestDispatcher("product/productSearchList.jsp").forward(req, res);
		}
	}

}
