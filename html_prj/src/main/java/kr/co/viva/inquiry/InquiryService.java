package kr.co.viva.inquiry;

import java.io.IOException;
import java.sql.SQLException;

public class InquiryService {
	private static InquiryService ms;
	
	private InquiryService() {
		
	}
	
	public static InquiryService getInstance() {
		if(ms==null) {
			ms = new InquiryService();
			
		}
		return ms;
	}
	
	public boolean addInquiry(InquiryDTO iDTO) {
		boolean flag = false;
		InqueryDAO iDAO = InqueryDAO.getInstance();
			try {
				flag=iDAO.insertInquiry(iDTO)==1;
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
				return flag;
	}//searchNotice
	
	public int searchMemberNum(String id) {
		int num = 0;
		InqueryDAO iDAO = InqueryDAO.getInstance();
			try {
				num=iDAO.selectMemberNum(id);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
				return num;
	}//searchNotice
	
	
}//InquiryService
