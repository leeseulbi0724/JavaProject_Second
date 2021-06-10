package com.starbucks.dao;

import java.util.ArrayList;

import com.starbucks.vo.UserVO;

public class UserDAO extends DBConn {
	
	
	public boolean getInsertResult(String id, String pass,String name, String email, String hp, String birth, String nick) {
		boolean result =  false;
		String sql = "insert into sb_member values(?,?,?,?,?,?,?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, hp);
			pstmt.setString(6, birth);
			pstmt.setString(7, nick);
			
			
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	public boolean getInsertResult(UserVO vo) {
		boolean result =  false;
		String sql = "insert into sb_member values(?,?,?,?,?,?,?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getHp());
			pstmt.setString(6, vo.getBirth());
			pstmt.setString(7, vo.getNick());
			
			
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;
				close();
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public boolean getLoginResult(String id, String pass) {
		
		boolean result = false;
		String sql= "select count(*) from sb_member where id=? and pass=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1) == 1) result = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		close();		
		return result;
	}
	
	//회원 리스트 - 관리자
	public ArrayList<UserVO> getUserList(){
		ArrayList<UserVO> list = new ArrayList<UserVO>();
		String sql = "select rownum rno, id, name, birth, hp, email, nick, to_char(mdate, 'yyyy-mm-dd') mdate "
				+ "	from (select id, name, birth, hp, email, nick, mdate from sb_member "
				+ "			order by mdate desc)";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()){
				UserVO vo = new UserVO();
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setBirth(rs.getString(4));
				vo.setHp(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setNick(rs.getString(7));
				vo.setMdate(rs.getString(8));
				
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
}