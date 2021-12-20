package com.shop.VO;

public class PcommentVO {
	private String pcommentNo;
	private String pcommentPname;
	private String pcommentWriter;
	private String pcommentCont;
	
	public PcommentVO() {
		super();
	}

	@Override
	public String toString() {
		return "PcommentVO [pcommentNo=" + pcommentNo + ", pcommentPname=" + pcommentPname + ", pcommentWriter="
				+ pcommentWriter + ", pcommentCont=" + pcommentCont + "]";
	}

	public String getPcommentNo() {
		return pcommentNo;
	}

	public void setPcommentNo(String pcommentNo) {
		this.pcommentNo = pcommentNo;
	}

	public String getPcommentPname() {
		return pcommentPname;
	}

	public void setPcommentPname(String pcommentPname) {
		this.pcommentPname = pcommentPname;
	}

	public String getPcommentWriter() {
		return pcommentWriter;
	}

	public void setPcommentWriter(String pcommentWriter) {
		this.pcommentWriter = pcommentWriter;
	}

	public String getPcommentCont() {
		return pcommentCont;
	}

	public void setPcommentCont(String pcommentCont) {
		this.pcommentCont = pcommentCont;
	}
	
	

}
