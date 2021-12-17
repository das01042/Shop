package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shop.VO.productVO;
import com.shop.service.productService;

public class productInsertController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		//이미지 1.request 2.저장위치 3.maxSize 4.UTF-8 5.리네임정책
	      String saveUrl = req.getRealPath("/upload");
	      int maxSize = 30 * 1024 * 1024;
	      String encoding = "UTF-8";
	      MultipartRequest mRequset = new MultipartRequest(req, saveUrl, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String pId = mRequset.getParameter("pId");
		String pName = mRequset.getParameter("pName");
		String pDesc = mRequset.getParameter("pDesc");
		int originPrice=Integer.parseInt(mRequset.getParameter("originPrice"));
		int salePrice=Integer.parseInt(mRequset.getParameter("salePrice"));
		double star = Double.parseDouble(mRequset.getParameter("star"));
		String image = mRequset.getFilesystemName("image");
		int count=Integer.parseInt(mRequset.getParameter("count"));
		productVO vo = new productVO();
		
		vo.setpId(pId);
		vo.setpName(pName);
		vo.setpDesc(pDesc);
		vo.setOriginPrice(originPrice);
		vo.setSalePrice(salePrice);
		vo.setStar(star);
		vo.setImage(image);
		vo.setCount(count);
		
		productService service = new productService();
		service.insert(vo);
		
		req.setAttribute("product", vo);
		req.getRequestDispatcher("product/productOutput.jsp").forward(req, res);
	}

}
