package com.starbucks.dao;

import java.util.ArrayList;

import com.starbucks.vo.CoffeeVO;
import com.starbucks.vo.menuVO;

public class coffeeDAO extends DBConn {



		//coffee 커피타입 - checkbox
		public ArrayList<CoffeeVO> getCheckList(String bean, String type){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "select ctype_id, clogo, cname from sb_coffee_list where ctype_id=? and cid=? " ;
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, bean);
				pstmt.setString(1, type);
				
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
//coffee 커피타입 
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
		
		// coffee 커피타입별 이미지 & 이름
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
		//coffee 커피타입 & 커피정보
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
		//coffee 관련제품
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
		
		
		
		
		
		//espresso 리스트
		public ArrayList<CoffeeVO> getEspressoList(){
			ArrayList<CoffeeVO> list = new ArrayList<CoffeeVO>();
			String sql = "select etype_id, ename, efile_main, eimg_main_text from sb_espresso_list" ;
			getPreparedStatement(sql);
			
			try {
				rs = pstmt.executeQuery();
				while(rs.next()){
					CoffeeVO vo = new CoffeeVO();
					vo.setEtype_id(rs.getString(1));
					vo.setEname(rs.getString(2));
					vo.setEfile_main(rs.getString(3));
					vo.setEimg_main_text(rs.getString(4));
	
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
		//에스프레소 타입
		public CoffeeVO getEspressoDetail(String etype){
			CoffeeVO vo = new CoffeeVO();
			String sql = "select ename, ename_tit, efile_content, etitle, econtent from sb_espresso_list where etype_id=? ";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, etype);
				
				rs = pstmt.executeQuery();
				while(rs.next()){
					vo.setEname(rs.getString(1));
					vo.setEname_tit(rs.getString(2));
					vo.setEfile_content(rs.getString(3));
					vo.setEtitle(rs.getString(4));
					vo.setEcontent(rs.getString(5));
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return vo;
		}
		
		// 에스프레소 관련제품
		public ArrayList<menuVO> getEspressoProduct(String etype){
			ArrayList<menuVO> list = new ArrayList<menuVO>();
			String sql = "select intro_t , img , k_name, mid from sb_espresso_product, sb_menu  where k_name=eproduct_name and etype_id=? " ;
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, etype);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					menuVO vo = new menuVO();
					vo.setIntro_t(rs.getString(1));
					vo.setImg(rs.getString(2));
					vo.setK_name(rs.getString(3));
					vo.setMid(rs.getString(4));
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
		
}











