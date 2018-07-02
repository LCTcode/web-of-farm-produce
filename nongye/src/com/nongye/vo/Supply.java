package com.nongye.vo;

import java.io.Serializable;
import java.util.Date;

public class Supply implements Serializable{
	private long supply_id;//供应商品ID
	private long user_id;//用户ID
	private long manager_id;//管理ID
	private long first_id;//一级商品ID
	private String keywords;//商品关键字
	private String goods_name;//商品名
	private String text;//商品描述
	private String context;//商品简介
	private String price;//商品价格
	private String standard;//起批标准
	private String address;//发货地
	private Date ontime;//发布时间
	private int isnew;//
	private int isvouch;//
	private int ischeck;//商品是否审核
	private long hits;//
	private long order_number;//
	private Date intime;//
	private long review_number;//
	public long getSupply_id() {
		return supply_id;
	}
	public void setSupply_id(long supply_id) {
		this.supply_id = supply_id;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public long getManager_id() {
		return manager_id;
	}
	public void setManager_id(long manager_id) {
		this.manager_id = manager_id;
	}
	public long getFirst_id() {
		return first_id;
	}
	public void setFirst_id(long first_id) {
		this.first_id = first_id;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getOntime() {
		return ontime;
	}
	public void setOntime(Date ontime) {
		this.ontime = ontime;
	}
	public int getIsnew() {
		return isnew;
	}
	public void setIsnew(int isnew) {
		this.isnew = isnew;
	}
	public int getIsvouch() {
		return isvouch;
	}
	public void setIsvouch(int isvouch) {
		this.isvouch = isvouch;
	}
	public int getIscheck() {
		return ischeck;
	}
	public void setIscheck(int ischeck) {
		this.ischeck = ischeck;
	}
	public long getHits() {
		return hits;
	}
	public void setHits(long hits) {
		this.hits = hits;
	}
	public long getOrder_number() {
		return order_number;
	}
	public void setOrder_number(long order_number) {
		this.order_number = order_number;
	}
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public long getReview_number() {
		return review_number;
	}
	public void setReview_number(long review_number) {
		this.review_number = review_number;
	}
	public Supply(long supply_id, long user_id, long manager_id, long first_id,
			String keywords, String goods_name, String text, String context,
			String price, String standard, String address, Date ontime,
			int isnew, int isvouch, int ischeck, long hits, long order_number,
			Date intime, long review_number) {
		super();
		this.supply_id = supply_id;
		this.user_id = user_id;
		this.manager_id = manager_id;
		this.first_id = first_id;
		this.keywords = keywords;
		this.goods_name = goods_name;
		this.text = text;
		this.context = context;
		this.price = price;
		this.standard = standard;
		this.address = address;
		this.ontime = ontime;
		this.isnew = isnew;
		this.isvouch = isvouch;
		this.ischeck = ischeck;
		this.hits = hits;
		this.order_number = order_number;
		this.intime = intime;
		this.review_number = review_number;
	}
	public Supply() {
		super();
	}
}
	
	
