package com.shop.service;

import java.util.List;

import com.shop.DAO.Product_commentDAO;
import com.shop.VO.PcommentVO;

public class PcommentService {
	Product_commentDAO dao = new Product_commentDAO();

	//후기 리스트
	public List<PcommentVO> pcommentList(String name){
		return dao.pcommentList(name);
	}
	//후기 등록
	public PcommentVO insert(PcommentVO vo) {
		return dao.pcommentInsert(vo);
	}
	//후기 삭제
	public PcommentVO delete(String no) {
		return dao.pcommentDelete(no);
	}
}
