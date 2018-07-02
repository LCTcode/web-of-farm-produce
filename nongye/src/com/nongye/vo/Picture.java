package com.nongye.vo;

import java.io.Serializable;

public class Picture implements Serializable{
	private long picture_id;
	private long supply_id;
	private String path;
	private String picture_name;
	private String remark;
	public long getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(long picture_id) {
		this.picture_id = picture_id;
	}
	public long getSupply_id() {
		return supply_id;
	}
	public void setSupply_id(long supply_id) {
		this.supply_id = supply_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getPicture_name() {
		return picture_name;
	}
	public void setPicture_name(String picture_name) {
		this.picture_name = picture_name;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Picture(long picture_id, long supply_id, String path,
			String picture_name, String remark) {
		super();
		this.picture_id = picture_id;
		this.supply_id = supply_id;
		this.path = path;
		this.picture_name = picture_name;
		this.remark = remark;
	}
	public Picture() {
		super();
	}
	
}