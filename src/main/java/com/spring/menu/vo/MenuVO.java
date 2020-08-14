package com.spring.menu.vo;

public class MenuVo {
	// ALL MENUS
	private String com_id;
	private String grp_id;
	private String com_val;
	private String com_lvl;
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
	
	
	@Override
	public String toString() {
		return "MenuVo [com_id=" + com_id + ", grp_id=" + grp_id + ", com_val=" + com_val + ", com_lvl=" + com_lvl
				+ ", parent_id=" + parent_id + "]";
	}
	
	
	
	
	
//	// main menus
//	private String menu_id;
//    private String menu_name;
//    private int menu_seq;
//    private int menu_lvl;
//    
//    // SUB MENUS
//    private String smenu_id;
//    private String smenu_name;
//    private String smenu_seq;
//    private String smenu_lvl;
//    private String parent_id;
//    private String p_id;
//    private String p_fname;
//
//    // main menus (get set)
//	public String getMenu_id() {
//		return menu_id;
//	}
//	public void setMenu_id(String menu_id) {
//		this.menu_id = menu_id;
//	}
//	public String getMenu_name() {
//		return menu_name;
//	}
//	public void setMenu_name(String menu_name) {
//		this.menu_name = menu_name;
//	}
//	public int getMenu_seq() {
//		return menu_seq;
//	}
//	public void setMenu_seq(int menu_seq) {
//		this.menu_seq = menu_seq;
//	}
//	public int getMenu_lvl() {
//		return menu_lvl;
//	}
//	public void setMenu_lvl(int menu_lvl) {
//		this.menu_lvl = menu_lvl;
//	}
//
//	// sub get set
//	public String getSmenu_id() {
//		return smenu_id;
//	}
//	public void setSmenu_id(String smenu_id) {
//		this.smenu_id = smenu_id;
//	}
//	public String getSmenu_name() {
//		return smenu_name;
//	}
//	public void setSmenu_name(String smenu_name) {
//		this.smenu_name = smenu_name;
//	}
//	public String getSmenu_seq() {
//		return smenu_seq;
//	}
//	public void setSmenu_seq(String smenu_seq) {
//		this.smenu_seq = smenu_seq;
//	}
//	public String getSmenu_lvl() {
//		return smenu_lvl;
//	}
//	public void setSmenu_lvl(String smenu_lvl) {
//		this.smenu_lvl = smenu_lvl;
//	}
//	public String getP_id() {
//		return p_id;
//	}
//	public void setP_id(String p_id) {
//		this.p_id = p_id;
//	}
//	public String getP_fname() {
//		return p_fname;
//	}
//	public void setP_fname(String p_fname) {
//		this.p_fname = p_fname;
//	}
//	
//	public String getParent_id() {
//		return parent_id;
//	}
//	public void setParent_id(String parent_id) {
//		this.parent_id = parent_id;
//	}
//	
//	@Override
//	public String toString() {
//		return "MenuVo [menu_id=" + menu_id + ", menu_name=" + menu_name + ", menu_seq=" + menu_seq + ", menu_lvl="
//				+ menu_lvl + ", smenu_id=" + smenu_id + ", smenu_name=" + smenu_name + ", smenu_seq=" + smenu_seq
//				+ ", smenu_lvl=" + smenu_lvl + ", parent_id=" + parent_id + ", p_id=" + p_id + ", p_fname=" + p_fname
//				+ "]";
//	}
	
    
}
