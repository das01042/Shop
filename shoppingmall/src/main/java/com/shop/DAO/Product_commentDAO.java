package com.shop.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.VO.PcommentVO;

public class Product_commentDAO extends DAO{

	//상품 후기 조회
	public List<PcommentVO> pcommentList(String name){
		List<PcommentVO> list = new ArrayList<>();
		String sql = "select * from product_comment where pcomment_product_name = ? order by 1";
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			
			rs = psmt.executeQuery();
			while(rs.next()) {		
				PcommentVO vo = new PcommentVO();
				
				vo.setPcommentNo(rs.getString("pcomment_no"));
				vo.setPcommentPname(rs.getString("pcomment_product_name"));
				vo.setPcommentWriter(rs.getString("pcomment_writer"));
				vo.setPcommentCont(rs.getString("pcomment_cont"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
	}

	//상품 후기 등록
	public PcommentVO pcommentInsert(PcommentVO vo) {
		String seqSql = "select pcomment_seq.nextval from dual";
		String sql = "insert into product_comment values(?,?,?,?)";
		connect();
		int seq = -1;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(seqSql);
			if(rs.next()) {
				seq = rs.getInt(1);
			}
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			psmt.setString(2, vo.getPcommentPname());
			psmt.setString(3, vo.getPcommentWriter());
			psmt.setString(4, vo.getPcommentCont());
			
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return vo;
	}
	
	//상품 후기 삭제
	public PcommentVO pcommentDelete(String no) {
		PcommentVO vo = new PcommentVO();
		String sql = "delete product_comment where pcomment_no=?";
		connect();
		
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, no);
			psmt.executeUpdate();
			return vo;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return null;
	}
	
	
}
