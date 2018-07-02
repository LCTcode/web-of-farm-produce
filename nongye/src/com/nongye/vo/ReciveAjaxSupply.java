package com.nongye.vo;

public class ReciveAjaxSupply {

	private int third_id;//第三级id
	private int value_id;//属性值id
	private int attribute_id;//属性id
	private String name;//属性名
	private String value;//属性
	
	public int getThird_id() {
		return third_id;
	}
	public void setThird_id(int third_id) {
		this.third_id = third_id;
	}
	public int getValue_id() {
		return value_id;
	}
	public void setValue_id(int value_id) {
		this.value_id = value_id;
	}
	public int getAttribute_id() {
		return attribute_id;
	}
	public void setAttribute_id(int attribute_id) {
		this.attribute_id = attribute_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public ReciveAjaxSupply(int third_id, int value_id, int attribute_id,
			String name, String value) {
		super();
		this.third_id = third_id;
		this.value_id = value_id;
		this.attribute_id = attribute_id;
		this.name = name;
		this.value = value;
	}
	public ReciveAjaxSupply(int third_id,  int attribute_id,
			String name, String value) {
		super();
		this.third_id = third_id;
		this.attribute_id = attribute_id;
		this.name = name;
		this.value = value;
	}
	
	public ReciveAjaxSupply(int attribute_id, 
			String name) {
		super();
		this.attribute_id = attribute_id;
		this.name = name;
		
	}
	public ReciveAjaxSupply() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

