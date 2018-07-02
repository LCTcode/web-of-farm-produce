package com.nongye.vo;

public class User {
	private int user_id;// 用户ID
	private String user_name;// 用户名
	private String type;// 用户类别..个体、公司...
	private String user_pwd;// 用户密码
	private String realname;// 用户真姓名
	private String email;// 用户电子邮箱
	private String licence;// 营业执照
	private String licence_photo;// 营业执照图片
	private String tel_number;// 用户固定电话
	private String mob_number;// 用户移动电话
	private String province;// 用户所在省份
	private String city;// 用户所在城市
	private String area;// 用户所在地区
	private String postcode;// 用户邮政编码
	private String idcard;// 用户身份证
	private String corporate_name;// 公司名称
	private String corporate_representative;// 法人代表
	private String card_photo;// 用户身份证照片
	private String address;// 用户详细住址
	private int ischeck;// 用户是否审核
	private String create_time;// 用户注册时间

	public String getLicence_photo() {
		return licence_photo;
	}

	public void setLicence_photo(String licence_photo) {
		this.licence_photo = licence_photo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCorporate_name() {
		return corporate_name;
	}

	public void setCorporate_name(String corporate_name) {
		this.corporate_name = corporate_name;
	}

	public String getCorporate_representative() {
		return corporate_representative;
	}

	public void setCorporate_representative(String corporate_representative) {
		this.corporate_representative = corporate_representative;
	}

	public String getCard_photo() {
		return card_photo;
	}

	public void setCard_photo(String card_photo) {
		this.card_photo = card_photo;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLicence() {
		return licence;
	}

	public void setLicence(String licence) {
		this.licence = licence;
	}

	public String getTel_number() {
		return tel_number;
	}

	public void setTel_number(String tel_number) {
		this.tel_number = tel_number;
	}

	public String getMob_number() {
		return mob_number;
	}

	public void setMob_number(String mob_number) {
		this.mob_number = mob_number;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getarea() {
		return area;
	}

	public void setarea(String area) {
		this.area = area;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getIscheck() {
		return ischeck;
	}

	public void setIscheck(int ischeck) {
		this.ischeck = ischeck;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

}
