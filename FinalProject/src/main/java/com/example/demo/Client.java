package com.example.demo;

public class Client {
	private String name;
	private String number;
	
	public Client(){
		
	}
	public Client(String name, String number) {
		this.name =name;
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	
}
