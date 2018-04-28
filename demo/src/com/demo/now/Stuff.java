package com.demo.now;

public class Stuff {
	
	public static final String getName = null;
	String name;
	Integer number = (int) Math.random();


	public Stuff(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	
	public Integer getNumber() {
		return number;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	

}
