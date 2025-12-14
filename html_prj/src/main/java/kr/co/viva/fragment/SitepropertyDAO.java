package kr.co.viva.fragment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.viva.notice.DbConn;

public class SitepropertyDAO {
	
	public static SitepropertyVO spVO;

	static {
		DbConn dbcon = DbConn.getInstance("jdbc/dbcp");
		
		Connection con = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			con = dbcon.getConn();
			String selectSp = " select protocol, domain, content, uri, num , key from siteproperty where num=1 ";
			pstmt = con.prepareStatement(selectSp);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				spVO = new SitepropertyVO(
						rs.getString("protocol"),
						rs.getString("domain"),
						rs.getString("content"),
						rs.getString("uri"),
						rs.getString("key"),
						rs.getInt("num"));
				}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
