package kr.co.viva.notice;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	/**
	 * 한 페이지에 보여질 수 
	 * @return
	 */
	public int pageScale() {
		return 10;
	}
	
	/**
	 * 총 페이지 수
	 * @param NoticeTotalCnt
	 * @param pageScale
	 * @return
	 */
	public int totalPage(int NoticeTotalCnt, int pageScale) {
		return (int)Math.ceil((double)NoticeTotalCnt/pageScale);
	}
	
	/**
	 * 페이지의 시작 번호
	 * @param currentPage
	 * @param pageScale
	 * @return
	 */
	public int startNum(int currentPage, int pageScale) {
		return (currentPage-1)*pageScale+1;
	}
	
	/**
	 * 페이지의 끝 번호
	 * @param startNum
	 * @param pageScale
	 * @return
	 */
	public int endNum(int startNum, int pageScale) {
		return startNum+pageScale-1;
	}
	
	public int searchNoticeTotalCnt() {
		int NoticeTotalCnt = 0;
		NoticeDAO nDAO = NoticeDAO.getInstance();
		try {
			NoticeTotalCnt = nDAO.selectNoticeTotalCnt();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return NoticeTotalCnt;
	}
	
	public List<NoticeDTO> searchNotice(RangeDTO rDTO) {
		List<NoticeDTO> list = new ArrayList<NoticeDTO>();
		NoticeDAO nDAO = NoticeDAO.getInstance();
			try {
				list=nDAO.selectNotice(rDTO);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
				return list;
	}//searchNotice
	
	public NoticeDTO searchNoticeDetail(int noticeNum) {
		NoticeDTO nDTO = new NoticeDTO();
		NoticeDAO nDAO = NoticeDAO.getInstance();
			try {
				nDTO=nDAO.selectNoticeDetail(noticeNum);
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}//end catch
				return nDTO;
	}//searchNotice
	
}//NoticeService
