package kr.co.viva.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NoticeDAO {
	private static NoticeDAO nDAO;
	
	private NoticeDAO(){
		
	}
	
	public static NoticeDAO getInstance() {
		if(nDAO ==null) {
			nDAO=new NoticeDAO();
			
		}
		return nDAO;
	}
	
	
	public NoticeDTO selectNotice() throws SQLException {
		NoticeDTO nDTO = new NoticeDTO();
		
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		
		try {
			con = db.getConn();
			
			String select = "select notice_type, notice_title, notice_msg, notice_date from notice";
			
			pstmt = con.prepareStatement(select);
			
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				rs.getString("notice_type");
				rs.getString("notice_title");
				rs.getString("notice_msg");
				rs.getString("notice_date");
			}
			
		}finally{
			db.dbClose(rs, pstmt, con);
		}
		
		
		
		return nDTO;
	}
}
