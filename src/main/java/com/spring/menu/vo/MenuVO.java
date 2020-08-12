package com.spring.menu.vo;

public class MenuVO {
	
	private String com_id;
	private String grp_id;
	private String com_val;
	private int com_lvl;
	private String parent_id;
	
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
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
	public int getCom_lvl() {
		return com_lvl;
	}
	public void setCom_lvl(int com_lvl) {
		this.com_lvl = com_lvl;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	
	@Override
	public String toString() {
		return "MenuVO [com_id=" + com_id + ", grp_id=" + grp_id + ", com_val=" + com_val + ", com_lvl=" + com_lvl
				+ ", parent_id=" + parent_id + "]";
	}
	
	
	
}
