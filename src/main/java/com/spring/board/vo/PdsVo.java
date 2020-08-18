package com.spring.board.vo;

public class PdsVo {
	private   int       b_idx;
	private   int       b_row;
	private   String    m_id;
	private   String    title;
	private   String    cont;
	private   String    m_name;
	private   String    regdate;
	private   int       readcount;
	
	
	// 답글 처리
	private   int       bnum;  // 글번호
	private   int       lvl;   // 답변단계
	private   int       step;  // 출력순서
	private   int       nref;  // 글 그룹번호
  
	
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getNref() {
		return nref;
	}
	public void setNref(int nref) {
		this.nref = nref;
	}
	
	public int getB_row() {
		return b_row;
	}
	public void setB_row(int b_row) {
		this.b_row = b_row;
	}
	

	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	@Override
	public String toString() {
		return "PdsVo [b_idx=" + b_idx + ", b_row=" + b_row + ", m_id=" + m_id + ", title=" + title + ", cont=" + cont
				+ ", m_name=" + m_name + ", regdate=" + regdate + ", readcount=" + readcount + ", bnum=" + bnum
				+ ", lvl=" + lvl + ", step=" + step + ", nref=" + nref + ", getB_idx()=" + getB_idx() + ", getTitle()="
				+ getTitle() + ", getCont()=" + getCont() + ", getM_name()=" + getM_name() + ", getRegdate()="
				+ getRegdate() + ", getReadcount()=" + getReadcount() + ", getBnum()=" + getBnum() + ", getLvl()="
				+ getLvl() + ", getStep()=" + getStep() + ", getNref()=" + getNref() + ", getB_row()=" + getB_row()
				+ ", getM_id()=" + getM_id() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
	
	
	
	
	
}
