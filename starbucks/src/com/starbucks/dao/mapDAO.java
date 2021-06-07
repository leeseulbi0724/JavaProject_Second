package com.starbucks.dao;

import java.util.ArrayList;

import com.starbucks.vo.mapVO;

public class mapDAO extends DBConn {
	
	/** 선택한 시/도로 구/군 가져오기 **/
	public ArrayList<mapVO> getData() {
		ArrayList<mapVO> list = new ArrayList<mapVO>();
		
		String sql = "SELECT PROVINCE, COUNTY FROM SB_MAP";
		getPreparedStatement(sql);		
		
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				mapVO vo = new mapVO();
				vo.setProvince(rs.getString(1));
				vo.setCounty(rs.getString(2));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

}
