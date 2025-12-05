package kr.co.viva.notice;

import java.io.IOException;
import java.sql.SQLException;

public class NoticeService {
	private static NoticeService ms;
	
	private NoticeService() {
		
	}
	
	public static NoticeService getInstance() {
		if(ms==null) {
			ms = new NoticeService();
			
		}
		return ms;
	}
	
	public NoticeDTO searchNotice() {
		NoticeDTO nDTO = null;
		NoticeDAO nDAO = NoticeDAO.getInstance();
			try {
				nDTO=nDAO.selectNotice();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
				return nDTO;
	}
	
}
