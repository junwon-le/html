package kr.co.viva.notice;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
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
	
	
	public NoticeDTO selectNotice() throws SQLException, IOException {
		NoticeDTO nDTO = new NoticeDTO();
		
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		
		try {
			con = db.getConn();
			
			String select = "select notice_type, notice_title, notice_msg, notice_date from notice where noticenum=1";
			
			pstmt = con.prepareStatement(select);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				nDTO.setCategory(rs.getString("notice_type"));
				nDTO.setTitle(rs.getString("notice_title"));
				nDTO.setInputDate(rs.getString("notice_date"));
				StringBuilder intro = new StringBuilder();
				Clob clob = rs.getClob("notice_msg");
							
				if(clob!=null) {
					BufferedReader br = null;
					try {
						br = new BufferedReader(clob.getCharacterStream());
						String temp ="";
					
						while ( (temp=br.readLine())!=null) { //읽어들인 값이 존재하면 
							intro.append(temp).append("\n");
						}//end while 
					}finally {
						nDTO.setMsg(String.valueOf(intro));
					}
				}
			}//end if
			
		}finally{
			db.dbClose(rs, pstmt, con);
		}
		
		
		
		return nDTO;
	}
}
