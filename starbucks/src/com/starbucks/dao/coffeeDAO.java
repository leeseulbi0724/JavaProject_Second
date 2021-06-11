package com.starbucks.dao;

import java.util.ArrayList;

import com.starbucks.vo.CoffeeVO;

public class coffeeDAO extends DBConn {
		//Select --> coffee 커피타입 
		public ArrayList<CoffeeVO> getList(String bean){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "select ctype_id, clogo, cname from sb_coffee_list where cid=?" ;
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, bean);
				
				rs = pstmt.executeQuery();
				while(rs.next()){
					CoffeeVO vo = new CoffeeVO();
					vo.setCtype_id(rs.getString(1));
					vo.setClogo(rs.getString(2));
					vo.setCname(rs.getString(3));
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
		//Select --> coffee 커피타입별 이미지 & 이름
		public ArrayList<CoffeeVO> getImgList(String bean, String ctype){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "select ctype_id, cimg_file, cimg_text from sb_coffee_img where cid=? and ctype_id=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, bean);
				pstmt.setString(2, ctype);
				
				rs = pstmt.executeQuery();
				while(rs.next()){
					CoffeeVO vo = new CoffeeVO();
					vo.setCtype_id(rs.getString(1));
					vo.setCimg_file(rs.getString(2));
					vo.setCimg_text(rs.getString(3));
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		//Select --> coffee 커피타입 & 커피정보
		public CoffeeVO getDetailImg(String ctype, String cimg){
			CoffeeVO vo = new CoffeeVO();
			String sql = "select l.clogo, l.cname, l.ctext, cimg_file, dproduct_name ,dproduct_ename,  dproduct_text,"
					+ " dproduct_note,  dproduct_enjoy, dproduct_content, dproduct_story , dproduct_tasting, product_name "
					+ " from sb_coffee_detail d, sb_coffee_list l where l.ctype_id=? and cimg_file=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, ctype);
				pstmt.setString(2, cimg);
				
				rs = pstmt.executeQuery();
				while(rs.next()){
					vo.setClogo(rs.getString(1));
					vo.setCname(rs.getString(2));
					vo.setCtext(rs.getString(3));
					vo.setCimg_file(rs.getString(4));
					vo.setDproduct_name(rs.getString(5));
					vo.setDproduct_ename(rs.getString(6));
					vo.setDproduct_text(rs.getString(7));
					vo.setDproduct_note(rs.getString(8));
					vo.setDproduct_enjoy(rs.getString(9));
					vo.setDproduct_content(rs.getString(10));
					vo.setDproduct_story(rs.getString(11));
					vo.setDproduct_tasting(rs.getString(12));
					vo.setProduct_name(rs.getString(13));
					
		
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return vo;
		}
		//Select --> coffee 관련제품
		public CoffeeVO getProductlImg(String pname){
			CoffeeVO vo = new CoffeeVO();
			String sql = "select dproduct_text, ctype_id, cimg_file from SB_COFFEE_DETAIL where dproduct_name=? ";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, pname);
				
				rs = pstmt.executeQuery();
				while(rs.next()){
					vo.setDproduct_text(rs.getString(1));
					vo.setCtype_id(rs.getString(2));
					vo.setCimg_file(rs.getString(3));
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return vo;
		}
		
		
		
		
		
		//Select --> espresso 리스트
		public ArrayList<CoffeeVO> getEspressoList(){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "select etype_id, ename, efile_name, eimg_main_text from sb_espresso_list" ;
			getPreparedStatement(sql);
			
			try {
				rs = pstmt.executeQuery();
				while(rs.next()){
					CoffeeVO vo = new CoffeeVO();
					vo.setEtype_id(rs.getString(1));
					vo.setEname(rs.getString(2));
					vo.setEfile_name(rs.getString(3));
					vo.setEimg_main_text(rs.getString(4));
	
					list.add(vo);
					System.out.println(vo.getEtype_id());
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
}
















