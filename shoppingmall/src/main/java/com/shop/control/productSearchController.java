package com.shop.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.VO.PcommentVO;
import com.shop.VO.productVO;
import com.shop.service.PcommentService;
import com.shop.service.productService;

public class productSearchController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	      
		String pname = req.getParameter("pName");
		String job = req.getParameter("job");
		
		productService service = new productService();
		PcommentService Pservice = new PcommentService();
		List<PcommentVO> pvo = Pservice.pcommentList(pname);
		productVO vo  = service.searchOne(pname);
		
		req.setAttribute("Pcomment", pvo);
		req.setAttribute("product", vo);
		
		if(job.equals("search")) {
			req.getRequestDispatcher("product/productSearchOutput.jsp").forward(req, res);
		}else if (job.equals("update")) {
			req.getRequestDispatcher("product/productUpdateForm.jsp").forward(req, res);
		}else if (job.equals("delete")) {
			req.getRequestDispatcher("product/productDeleteForm.jsp").forward(req, res);
		}
		
	}

}
