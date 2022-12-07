package com.example.demo;

import java.util.Date;

public class Client {
	private int seq;
	private int tablenum;
	private int booktime;
	private int people;
	private String name;
	private String phonenum;
	private Date date;
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getBooktime() {
		return booktime;
	}

	public void setBooktime(int booktime) {
		this.booktime = booktime;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getTablenum() {
		return tablenum;
	}

	public void setTablenum(int tablenum) {
		this.tablenum = tablenum;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	@Override
	public String toString() {
		return "Client [seq=" + seq + ", tablenum=" + tablenum + ", people=" + people + ", name=" + name + ", phonenum="
				+ phonenum + "]";
	}

}
