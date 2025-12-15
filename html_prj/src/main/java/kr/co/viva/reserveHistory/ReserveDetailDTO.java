package kr.co.viva.reserveHistory;

import java.sql.Date;

public class ReserveDetailDTO {
	private int resNum,personCnt, loc, payNum, payPrice, installment ;
	private Date payDate, perfDate, resDate;
	private String title,  state , reserveName, locStr, payAgency ;
	public ReserveDetailDTO() {
		super();
	}
	public ReserveDetailDTO(int resNum, int personCnt, int loc, int payNum, int payPrice, int installment, Date payDate,
			Date perfDate, Date resDate, String title, String state, String reserveName, String locStr,
			String payAgency) {
		super();
		this.resNum = resNum;
		this.personCnt = personCnt;
		this.loc = loc;
		this.payNum = payNum;
		this.payPrice = payPrice;
		this.installment = installment;
		this.payDate = payDate;
		this.perfDate = perfDate;
		this.resDate = resDate;
		this.title = title;
		this.state = state;
		this.reserveName = reserveName;
		this.locStr = locStr;
		this.payAgency = payAgency;
	}
	public int getResNum() {
		return resNum;
	}
	public void setResNum(int resNum) {
		this.resNum = resNum;
	}
	public int getPersonCnt() {
		return personCnt;
	}
	public void setPersonCnt(int personCnt) {
		this.personCnt = personCnt;
	}
	public int getLoc() {
		return loc;
	}
	public void setLoc(int loc) {
		this.loc = loc;
	}
	public int getPayNum() {
		return payNum;
	}
	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}
	public int getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}
	public int getInstallment() {
		return installment;
	}
	public void setInstallment(int installment) {
		this.installment = installment;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public Date getPerfDate() {
		return perfDate;
	}
	public void setPerfDate(Date perfDate) {
		this.perfDate = perfDate;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getReserveName() {
		return reserveName;
	}
	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}
	public String getLocStr() {
		return locStr;
	}
	public void setLocStr(String locStr) {
		this.locStr = locStr;
	}
	public String getPayAgency() {
		return payAgency;
	}
	public void setPayAgency(String payAgency) {
		this.payAgency = payAgency;
	}
	@Override
	public String toString() {
		return "ReserveDetailDTO [resNum=" + resNum + ", personCnt=" + personCnt + ", loc=" + loc + ", payNum=" + payNum
				+ ", payPrice=" + payPrice + ", installment=" + installment + ", payDate=" + payDate + ", perfDate="
				+ perfDate + ", resDate=" + resDate + ", title=" + title + ", state=" + state + ", reserveName="
				+ reserveName + ", locStr=" + locStr + ", payAgency=" + payAgency + "]";
	}

	

}
