package com.spring.room.vo;

public class RoomVo {
	// room
	private String r_id;
	private String r_name;
	private String r_style;
	private String r_size;
	private int max_cap;
	private String r_avail;
	
	// price
	private String pr_id;
	private String com_id;
	private String r_price;
	
	// commons
	private String grp_id;
	private String com_val;
	private String com_lvl;
	private String parent_id;
	
	// DETAIL(FILES)
	private int f_idx;
	private String f_name;
	
	// ROOM getter setter
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
	public String getR_avail() {
		return r_avail;
	}
	public void setR_avail(String r_avail) {
		this.r_avail = r_avail;
	}
	
	// price getter setter
	// commons getter setter
	public String getPr_id() {
		return pr_id;
	}
	public void setPr_id(String pr_id) {
		this.pr_id = pr_id;
	}
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public String getR_price() {
		return r_price;
	}
	public void setR_price(String r_price) {
		this.r_price = r_price;
	}
	public String getGrp_id() {
		return grp_id;
	}
	public void setGrp_id(String grp_id) {
		this.grp_id = grp_id;
	}
	public String getCom_val() {
		return com_val;
	}
	public void setCom_val(String com_val) {
		this.com_val = com_val;
	}
	public String getCom_lvl() {
		return com_lvl;
	}
	public void setCom_lvl(String com_lvl) {
		this.com_lvl = com_lvl;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	
	// detail(files)
	public int getF_idx() {
		return f_idx;
	}
	public void setF_idx(int f_idx) {
		this.f_idx = f_idx;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	
	
	
	@Override
	public String toString() {
		return "RoomVo [r_id=" + r_id + ", r_name=" + r_name + ", r_style=" + r_style + ", r_size=" + r_size
				+ ", max_cap=" + max_cap + ", r_avail=" + r_avail + ", pr_id=" + pr_id + ", com_id=" + com_id
				+ ", r_price=" + r_price + ", grp_id=" + grp_id + ", com_val=" + com_val + ", com_lvl=" + com_lvl
				+ ", parent_id=" + parent_id + ", f_idx=" + f_idx + ", f_name=" + f_name + "]";
	}

	
	
}
