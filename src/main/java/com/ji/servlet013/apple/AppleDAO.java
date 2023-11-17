package com.ji.servlet013.apple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.ji.servlet013.dbmanager.JiDBManager;

public class AppleDAO {

	// 총 사과 데이터 수
	private int allAppleCount;
	
	private static final AppleDAO APPLEDAO = new AppleDAO();
	
	private AppleDAO() {
		
	}
	
	// 이 메소드만으로만 AppleDAO 접근 가능.
	public static AppleDAO getAppledao() {
		return APPLEDAO;
	}

	public int getAllAppleCount() {
		return allAppleCount;
	}

	public void setAllAppleCount(int allAppleCount) {
		this.allAppleCount = allAppleCount;
	}
	
	// 모든 사과 데이터 전부 가져오기 - R > Select
	
	public void getAllApples(HttpServletRequest request) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = JiDBManager.connect("jiPool");
			String sql = "select * from nov17_apple order by a_price";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Apple> apal = new ArrayList<Apple>();
			Apple ap = null;
			
			while(rs.next()) {
				
				ap = new Apple();
				ap.setA_num(rs.getInt("a_num"));
				ap.setA_location(rs.getString("a_location"));
				ap.setA_color(rs.getString("a_color"));
				ap.setA_flavor(rs.getString("a_flavor"));
				ap.setA_price(rs.getInt("a_price"));
				ap.setA_introduce(rs.getString("a_introduce"));
				apal.add(ap);
				
			}
			request.setAttribute("apples", apal);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		JiDBManager.close(conn,pstmt,rs);
	}
	
	
}
