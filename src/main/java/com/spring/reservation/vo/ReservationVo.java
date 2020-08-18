package com.spring.reservation.vo;

public class ReservationVo {
	private int r_idx;
	private String r_id;
	private String r_name;
	private String r_style;
	private String r_size;
	private int	    max_cap;
	private int     r_avail;
	private String  r_price;
	private String  status;
	private int     total;
	private String  book_name;
	private String  book_tel;
	private String  book_email;
	private String  start_date;
	private  int    peri;
	private String  com_val;
	
	
	public String getCom_val() {
		return com_val;
	}
	public void setCom_val(String com_val) {
		this.com_val = com_val;
	}
	public int getR_idx() {
		return r_idx;
	}
	public void setR_idx(int r_idx) {
		this.r_idx = r_idx;
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
	public String getR_style() {
		return r_style;
	}
	public void setR_style(String r_style) {
		this.r_style = r_style;
	}
	public String getR_size() {
		return r_size;
	}
	public void setR_size(String r_size) {
		this.r_size = r_size;
	}
	public int getMax_cap() {
		return max_cap;
	}
	public void setMax_cap(int max_cap) {
		this.max_cap = max_cap;
	}
	public int getR_avail() {
		return r_avail;
	}
	public void setR_avail(int r_avail) {
		this.r_avail = r_avail;
	}
	public String getR_price() {
		return r_price;
	}
	public void setR_price(String r_price) {
		this.r_price = r_price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_tel() {
		return book_tel;
	}
	public void setBook_tel(String book_tel) {
		this.book_tel = book_tel;
	}
	public String getBook_email() {
		return book_email;
	}
	public void setBook_email(String book_email) {
		this.book_email = book_email;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public int getPeri() {
		return peri;
	}
	public void setPeri(int peri) {
		this.peri = peri;
	}
	
	//생성자
	
	public ReservationVo(int r_idx, String r_id, String r_name, String r_style, String r_size, int max_cap, int r_avail,
			String r_price, String status, int total, String book_name, String book_tel, String book_email,
			String start_date, int peri) {
		super();
		this.r_idx = r_idx;
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_style = r_style;
		this.r_size = r_size;
		this.max_cap = max_cap;
		this.r_avail = r_avail;
		this.r_price = r_price;
		this.status = status;
		this.total = total;
		this.book_name = book_name;
		this.book_tel = book_tel;
		this.book_email = book_email;
		this.start_date = start_date;
		this.peri = peri;
	}
	public ReservationVo() {
		super();
	}
	
	//tostring
	@Override
	public String toString() {
		return "ReservationVo [r_idx=" + r_idx + ", r_id=" + r_id + ", r_name=" + r_name + ", r_style=" + r_style
				+ ", r_size=" + r_size + ", max_cap=" + max_cap + ", r_avail=" + r_avail + ", r_price=" + r_price
				+ ", status=" + status + ", total=" + total + ", book_name=" + book_name + ", book_tel=" + book_tel
				+ ", book_email=" + book_email + ", start_date=" + start_date + ", peri=" + peri + "]";
	}
	
	
	
	
	
	
}
