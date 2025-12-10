package kr.co.viva.notice;

public class RangeDTO {
	private int startNum , endNum ;
	private String category, keyword;
	private String categoryStr;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategoryStr() {
		return categoryStr;
	}

	public void setCategoryStr(String categoryStr) {
		String[] categoryArr = {"category"
		this.categoryStr = categoryStr;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	@Override
	public String toString() {
		return "RangeDTO [startNum=" + startNum + ", endNum=" + endNum + "]";
	}
	
	
}
