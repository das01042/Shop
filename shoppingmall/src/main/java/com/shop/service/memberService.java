package com.shop.service;

import java.util.List;

import com.shop.DAO.memberDAO;
import com.shop.VO.memberVO;

public class memberService {
	memberDAO dao = new memberDAO();
	
	
	//로그인 체크
	public memberVO loginCheck(String id, String pw) {
		return dao.loginCheck(id, pw);
	}
	//아이디찾기
	public String findId(String name,String email) {
		return dao.findId(name, email);
	}
	//비밀번호찾기
	public String findPw(String id,String name,String email) {
		return dao.findPassword(id, name, email);
	}
	
	
	//회원 리스트
	public List<memberVO> searchAll(){
		return dao.memberList();
	}
	//단일 조회
	public memberVO searchOne(String id) {
		return dao.memberSearch(id);
	}
	//등록
	public memberVO insert(memberVO vo) {
		return dao.memberInsert(vo);
	}
	//수정
	public memberVO update(memberVO vo) {
		return dao.memberUpdate(vo);
	}
	//삭제
	public memberVO delete(String id) {
		return dao.memberDelete(id);
	}
}
