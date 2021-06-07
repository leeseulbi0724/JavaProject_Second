package com.starbucks.dao;

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
}
