package kr.co.viva.inquiry;

public class InquiryDTO {
	private String title,msg;
	private int memberNum;
	
	
	public InquiryDTO() {
		super();
	}


	public InquiryDTO(String title, String msg, int memberNum) {
		super();
		this.title = title;
		this.msg = msg;
		this.memberNum = memberNum;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	public int getMemberNum() {
		return memberNum;
	}


	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}


	@Override
	public String toString() {
		return "InquiryDTO [title=" + title + ", msg=" + msg + ", memberNum=" + memberNum + "]";
	}
	
	

	
}
