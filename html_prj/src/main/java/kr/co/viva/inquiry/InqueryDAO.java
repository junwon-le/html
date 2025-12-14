package kr.co.viva.inquiry;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.viva.notice.DbConn;
import kr.co.viva.notice.NoticeDAO;
import kr.co.viva.notice.NoticeDTO;

public class InqueryDAO {
	private static InqueryDAO nDAO;
	
	private InqueryDAO(){
		
	}
	
	public static InqueryDAO getInstance() {
		if(nDAO ==null) {
			nDAO=new InqueryDAO();
			
		}
		return nDAO;
	}
	
	
	public int insertInquiry(InquiryDTO nDTO) throws SQLException, IOException {
		int cnt = 0 ;
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = db.getConn();
			StringBuilder insertInquiry = new StringBuilder();
			
			insertInquiry
			.append("	insert into inquiry(inquiry_num, member_num, inquiry_title, inquiry_msg)	")
			.append("	values(seq_inquiry_num.nextval,?,?,?)	");
			
 			pstmt = con.prepareStatement(insertInquiry.toString());
			
 			pstmt.setInt(1, nDTO.getMemberNum());
 			pstmt.setString(2, nDTO.getTitle());
 			pstmt.setString(3, nDTO.getMsg());
 			
			cnt= pstmt.executeUpdate();
			
			
		}finally{
			db.dbClose(null, pstmt, con);
		}//end finally
		return cnt;
	}//insertInquiry
	
	public int selectMemberNum(String id) throws SQLException, IOException {
		int num = 0 ;
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = db.getConn();
			StringBuilder insertInquiry = new StringBuilder();
			
			insertInquiry
			.append("	select member_num from member	")
			.append("	where id=?	");
			
 			pstmt = con.prepareStatement(insertInquiry.toString());
			
 			pstmt.setString(1, id);
 			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				num = rs.getInt("member_num");
			}
			
		}finally{
			db.dbClose(rs, pstmt, con);
		}//end finally
		return num;
	}//selectMemberNum

}//class
