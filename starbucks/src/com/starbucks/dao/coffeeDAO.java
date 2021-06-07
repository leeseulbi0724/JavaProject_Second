package com.starbucks.dao;

import java.util.ArrayList;

import com.starbucks.vo.CoffeeVO;

public class coffeeDAO extends DBConn2 {
	//Select --> 전체 리스트
		public ArrayList<CoffeeVO> getList(){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "";
			getPreparedStatement(sql);
			
			try {
				rs = pstmt.executeQuery();
				while(rs.next()){
					CoffeeVO vo = new CoffeeVO();
					/*vo.setRno(rs.getInt(1));
					vo.setBid(rs.getString(2));
					vo.setBtitle(rs.getString(3));
					vo.setBhit(rs.getInt(4));
					vo.setBdate(rs.getString(5)); */
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
}
