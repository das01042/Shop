package com.shop.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.VO.memberVO;


public class memberDAO extends DAO{

	//로그인 체크 
		public memberVO loginCheck(String id,String pw) {
			String sql ="select * from member where id =? and password =?";
				connect();
				try {
					psmt=conn.prepareStatement(sql);
					psmt.setString(1, id);
					psmt.setString(2, pw);
					rs = psmt.executeQuery();
					if(rs.next()) {
						memberVO vo = new memberVO();
						vo.setId(rs.getString("id"));
						vo.setPassword(rs.getString("password"));
						vo.setEmail(rs.getString("email"));
						vo.setName(rs.getString("name"));
						
						return vo;
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}finally {
					disconnect();
				}
				return null;
		}
	
	//아이디 찾기 (이름 , 이메일)
		public String findId(String name, String email) {
			String sql = "select id from member where name = ? and email= ?";
			connect();
			String id = null;
			try {
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, name);
				psmt.setString(2, email);
				rs=psmt.executeQuery();
				if(rs.next()) {
					id=rs.getString("id");
				System.out.println(id);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return id;
		}
		
	//비밀번호 찾기 ( 아이디, 이름 , 이메일 )
		public String findPassword(String id,String name,String email) {
			String sql = "select password from member where id = ? and name=? and email=?";
			connect();
			String pw=null;
			
			try {
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.setString(2, name);
				psmt.setString(3, email);
				
				rs=psmt.executeQuery();
				if(rs.next()) {
					pw=rs.getString("password");
				System.out.println(pw);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return pw;
		}
	
	
	//전체리스트.
		public List<memberVO> memberList(){
			List<memberVO> list = new ArrayList<>();
			String sql = "select * from member order by 1";
			connect();
			try {
				stmt=conn.createStatement();
				rs = stmt.executeQuery(sql);
				while(rs.next()) {
					memberVO vo = new memberVO();
					vo.setId(rs.getString("id"));
					vo.setPassword(rs.getString("password"));
					vo.setName(rs.getString("name"));
					vo.setEmail(rs.getString("email"));
					list.add(vo);
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return list;
		}
		
		//단일 조회.
		public memberVO memberSearch(String id) {
			String sql = "select * from member where id = ? ";
			connect();
			try {
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, id);
				rs = psmt.executeQuery();
				if(rs.next()) {
					memberVO vo = new memberVO();
					vo.setId(rs.getString("id"));
					vo.setPassword(rs.getString("password"));
					vo.setName(rs.getString("name"));
					vo.setEmail(rs.getString("email"));
					return vo;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return null;
		}
		
		//회원가입
		public memberVO memberInsert(memberVO vo)  {
			String sql = "insert into member values(?,?,?,?)";
			connect();
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, vo.getId());
				psmt.setString(2, vo.getPassword());
				psmt.setString(3, vo.getName());
				psmt.setString(4, vo.getEmail());
				
				int r = psmt.executeUpdate();
				System.out.println(r + "건 입력");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return vo;
		}
		
		//회원정보수정 .
		public memberVO memberUpdate(memberVO vo) {
			String sql="update member"
					+ " set password= ?,"
					+ " 	name =?,"
					+ " 	email=?"
					+ " where id =?";
			connect();
			try {
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, vo.getPassword());
				psmt.setString(2, vo.getName());
				psmt.setString(3, vo.getEmail());
				psmt.setString(4, vo.getId());
				int r = psmt.executeUpdate();
				System.out.println(r+"건 변경");
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return vo;
		}
		
		
		//삭제 . 
		public memberVO memberDelete(String id) {
			memberVO vo = new memberVO();
			String sql = "delete from member where id =?";
			connect();
			try {
				psmt=conn.prepareStatement(sql);
				psmt.setString(1, id);
				int r = psmt.executeUpdate();
				System.out.println(r+"건 삭제");
				return vo;
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				disconnect();
			}
			return null;
		}
		
		
}
