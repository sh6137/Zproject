package com.spring.member.vo;

public class MemberVo {
	// field
	private String m_idx;
	
	
	private String m_id;
	
	
	private String m_name;
	
	
	private String m_pw;
	
	
	private String tel;
	
	
	private String email;
	
	private String lvl;
	private String    cnt;
	
	// getter setter
	
	public String getM_idx() {
		return m_idx;
	}
	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}
	
	public String getM_id() {
		return m_id;
	}
	
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLvl() {
		return lvl;
	}
	public void setLvl(String lvl) {
		this.lvl = lvl;
	}
	
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	
	
	@Override
	public String toString() {
		return "MemberVo [m_idx=" + m_idx + ", m_id=" + m_id + ", m_name=" + m_name + ", m_pw=" + m_pw + ", tel=" + tel
				+ ", email=" + email + ", lvl=" + lvl + ", cnt=" + cnt + "]";
	}
	
	
	
	
}
