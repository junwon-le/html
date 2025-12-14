package kr.co.viva.fragment;

public class SitepropertyVO {
	private String protocol , content, uri, domain, key;
	private int num;
	
	
	public SitepropertyVO(String protocol,  String domain, String content, String uri, String key, int num) {
		super();
		this.protocol = protocol;
		this.content = content;
		this.uri = uri;
		this.domain = domain;
		this.key = key;
		this.num = num;
	}
	public String getProtocol() {
		return protocol;
	}
	public String getContent() {
		return content;
	}
	public String getUri() {
		return uri;
	}
	public String getDomain() {
		return domain;
	}
	public String getKey() {
		return key;
	}
	public int getNum() {
		return num;
	}
}
