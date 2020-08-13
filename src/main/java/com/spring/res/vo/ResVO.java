package com.spring.res.vo;

public class ResVO {

	private int res_idx;
	private String m_id;
	private String r_id;
	private String r_name;
	private String book_name;
	private String book_date;
	private String start_date;
	private String end_date;
	private int peri;
	private int res_status;
	private String res_status_info;
	private int r_price;
	private int rn;
	private String r_tel;
	private String cc_true;
	public int getRes_idx() {
		return res_idx;
	}
	public void setRes_idx(int res_idx) {
		this.res_idx = res_idx;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public int getPeri() {
		return peri;
	}
	public void setPeri(int peri) {
		this.peri = peri;
	}
	public int getRes_status() {
		return res_status;
	}
	public void setRes_status(int res_status) {
		this.res_status = res_status;
	}
	public String getRes_status_info() {
		return res_status_info;
	}
	public void setRes_status_info(String res_status_info) {
		this.res_status_info = res_status_info;
	}
	public int getR_price() {
		return r_price;
	}
	public void setR_price(int r_price) {
		this.r_price = r_price;
	}
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public String getCc_true() {
		return cc_true;
	}
	public void setCc_true(String cc_true) {
		this.cc_true = cc_true;
	}
	
	@Override
	public String toString() {
		return "ResVO [res_idx=" + res_idx + ", m_id=" + m_id + ", r_id=" + r_id + ", r_name=" + r_name + ", book_name="
				+ book_name + ", book_date=" + book_date + ", start_date=" + start_date + ", end_date=" + end_date
				+ ", peri=" + peri + ", res_status=" + res_status + ", res_status_info=" + res_status_info
				+ ", r_price=" + r_price + ", rn=" + rn + ", r_tel=" + r_tel + ", cc_true=" + cc_true + "]";
	}

}
