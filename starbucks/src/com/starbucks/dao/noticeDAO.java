package com.starbucks.dao;

import java.sql.Blob;
import java.util.ArrayList;

import com.starbucks.vo.noticeVO;

public class noticeDAO extends DBConn {
	
	
	/** 공지사항 글쓰기 **/
	public boolean getInsertResult(noticeVO vo) {
		boolean result = false;		
		
		try {
			String sql = "INSERT INTO SB_NOTICE VALUES('N_'||SEQU_SB_NOTICE_NID.NEXTVAL,?,?,SYSDATE,0,?,?)";
			getPreparedStatement(sql);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getSfile());
			
			int val = pstmt.executeUpdate();
			
			if ( val != 0) {
				result=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	
	/** 공지사항 목록 **/
	public ArrayList<noticeVO> getSelectResult() {
		ArrayList<noticeVO> list = new ArrayList<noticeVO>();
		
		try {
			String sql = " SELECT ROWNUM RNO, NID, TITLE, CONTENT, TO_CHAR(NDATE,'YYYY-MM-DD'), COUNT"
					+ " FROM(SELECT ROWNUM RNO, NID, TITLE, CONTENT, NDATE, COUNT "
					+ " FROM(SELECT NID, TITLE, CONTENT, NDATE, COUNT FROM SB_NOTICE ORDER BY NID DESC) ORDER BY RNO DESC) "
					+ " ORDER BY NDATE DESC";
			getPreparedStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				noticeVO vo = new noticeVO();
				vo.setNo(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setTitle(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setDate(rs.getString(5));
				vo.setCount(rs.getInt(6));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return list;
	}
	
	/** 공지사항 상세보기 **/
	public noticeVO getContentResult(String nid) {
		noticeVO vo = new noticeVO();
		
		try {
			String sql = "SELECT TITLE, CONTENT FROM SB_NOTICE WHERE NID=?";
			getPreparedStatement(sql);
			
			pstmt.setString(1, nid);
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo.setTitle(rs.getString(1));
				vo.setContent(rs.getString(2));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	/** 공지사항 삭제 **/
	public boolean getDeleteResult(ArrayList<String> nlist) {
		boolean result = false;
		for (int i = 0; i<nlist.size(); i++) {
			String sql = "DELETE FROM SB_NOTICE WHERE NID=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, nlist.get(i));
				
				int val = pstmt.executeUpdate();
				
				if ( val != 0) {
					result = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}			
		}
		close();
		return result;
	}
	
	/** 공지사항 수정 **/
	public boolean getUpdateResult(noticeVO vo) {
		boolean result =false;
		
		String sql = "UPDATE SB_NOTICE SET TITLE=?, CONTENT=? WHERE NID=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getNid());
			
			int val = pstmt.executeUpdate();
			
			if ( val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	
	/** 공지사항 클릭시 조회수 추가 **/
	public void getCountUp(String nid) {
		
		String sql = "UPDATE SB_NOTICE SET COUNT=COUNT+1 WHERE NID=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, nid);			
			pstmt.executeUpdate();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
	}
	
	public void close() {
		try {
			//6단계 - 연결종료
	    	if(rs != null) rs.close();
	    	if (pstmt != null) pstmt.close();
	    	if (conn != null) conn.close();
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}