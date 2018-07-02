package com.nongye.vo;

import java.io.Serializable;
import java.util.Date;

public class Purchase implements Serializable{
	private long purchase_id;//商品ID
	private String  purchase_name;//商品名字
	private String text;//采购描述
	private String type;//商品种类
	private String purchase_number;//采购需求量
	private Date ontime;//采购单生成时间
	private Date offtime;//采购截止时间
	private long manager_id;//
	private Date checktime;//采购审核
	private int ischeck;//是否审核
	private String address;//收货地址
	private String expected_price;//期望价格
	private long view_number;//访问次数
	private long quote_count;//报价数量
	private int user_id;
	private String user_name;
	private String tel_number;
	/*private Manager manager;*/
	
	
	public String getTel_number() {
		return tel_number;
	}
	public void setTel_number(String tel_number) {
		this.tel_number = tel_number;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getChecktime() {
		return checktime;
	}
	public void setChecktime(Date checktime) {
		this.checktime = checktime;
	}
	/*public Manager getManager() {
		return manager;
	}*/
	/*public void setManager(Manager manager) {
		this.manager = manager;
	}*/
	public long getManager_id() {
		return manager_id;
	}
	public void setManager_id(long manager_id) {
		this.manager_id = manager_id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public long getPurchase_id() {
		return purchase_id;
	}
	public void setPurchase_id(long purchase_id) {
		this.purchase_id = purchase_id;
	}
	public String getPurchase_name() {
		return purchase_name;
	}
	public void setPurchase_name(String purchase_name) {
		this.purchase_name = purchase_name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getPurchase_number() {
		return purchase_number;
	}
	public void setPurchase_number(String purchase_number) {
		this.purchase_number = purchase_number;
	}
	public Date getOntime() {
		return ontime;
	}
	public void setOntime(Date ontime) {
		this.ontime = ontime;
	}
	public Date getOfftime() {
		return offtime;
	}
	public void setOfftime(Date offtime) {
		this.offtime = offtime;
	}
	public int getIscheck() {
		return ischeck;
	}
	public void setIscheck(int ischeck) {
		this.ischeck = ischeck;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getExpected_price() {
		return expected_price;
	}
	public void setExpected_price(String expected_price) {
		this.expected_price = expected_price;
	}
	public long getView_number() {
		return view_number;
	}
	public void setView_number(long view_number) {
		this.view_number = view_number;
	}
	public long getQuote_count() {
		return quote_count;
	}
	public void setQuote_count(long quote_count) {
		this.quote_count = quote_count;
	}
	
	public Purchase(long purchase_id, String purchase_name, String text,
			String type, String purchase_number, Date ontime, Date offtime,
			long manager_id, int ischeck, String address,
			String expected_price, long view_number, long quote_count, User user) {
		super();
		this.purchase_id = purchase_id;
		this.purchase_name = purchase_name;
		this.text = text;
		this.type = type;
		this.purchase_number = purchase_number;
		this.ontime = ontime;
		this.offtime = offtime;
		this.manager_id = manager_id;
		this.ischeck = ischeck;
		this.address = address;
		this.expected_price = expected_price;
		this.view_number = view_number;
		this.quote_count = quote_count;
		this.user = user;
	}
	public Purchase(long purchase_id, String purchase_name, String text,
			String type, String purchase_number, Date ontime, Date offtime,
			long manager_id, int ischeck, String address,
			String expected_price, long view_number, long quote_count,int user_id,String user_name,String tel_number ) {
		super();
		this.purchase_id = purchase_id;
		this.purchase_name = purchase_name;
		this.text = text;
		this.type = type;
		this.purchase_number = purchase_number;
		this.ontime = ontime;
		this.offtime = offtime;
		this.manager_id = manager_id;
		this.ischeck = ischeck;
		this.address = address;
		this.expected_price = expected_price;
		this.view_number = view_number;
		this.quote_count = quote_count;
		this.user_id=user_id;
		this.user_name=user_name;
		this.tel_number=tel_number;
	}
	
	public Purchase( String purchase_name, 
			 String purchase_number, Date ontime, Date offtime,
			int ischeck, 
			String expected_price ,String type) {
		super();
		
		this.purchase_name = purchase_name;
		this.purchase_number = purchase_number;
		this.ontime = ontime;
		this.offtime = offtime;
		this.ischeck = ischeck;
		this.expected_price = expected_price;
		this.type=type;
	}
	public Purchase() {
		super();
	}
	
}	

