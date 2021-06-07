package com.starbucks.dao;

import com.starbucks.vo.menuVO;

public class menuDAO extends DBConn {
	
	
	public menuVO getMenuDetail(String mid){
		menuVO vo = new menuVO();
		String sql = "select m_type, k_name, e_name, intro_t, intro_b, nutri_inform, kcal, "
				+ " fat, protein, na, sugar, caffeine, allergy, big_img, small_img, p_type "
				+ " from sb_menu where mid=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setM_type(rs.getString(1));
				vo.setK_name(rs.getString(2));
				vo.setE_name(rs.getString(3));
				vo.setIntro_t(rs.getString(4));
				vo.setIntro_b(rs.getString(5));
				vo.setNutri_inform(rs.getString(6));
				vo.setKcal(rs.getInt(7));
				vo.setFat(rs.getInt(8));
				vo.setProtein(rs.getInt(9));
				vo.setNa(rs.getInt(10));
				vo.setSugar(rs.getInt(11));
				vo.setCaffeine(rs.getInt(12));
				vo.setAllergy(rs.getString(13));
				vo.setBig_img(rs.getString(14));
				vo.setSmall_img(rs.getString(15));
				vo.setP_type(rs.getString(16));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return vo;
		
	}
	
	
}