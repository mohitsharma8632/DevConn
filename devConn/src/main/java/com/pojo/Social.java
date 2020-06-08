package com.pojo;

public class Social {
	private String a;
	private String b;
	private String c;
	private String d;
	private String e;
	
	public Social(String a, String b, String c, String d, String e) {
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.e = e;
	}
	public Social() {
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getE() {
		return e;
	}
	public void setE(String e) {
		this.e = e;
	}
	@Override
	public String toString() {
		if(a.length()==0)
			a="no";
		if(b.length()==0)
			b="no";
		if(c.length()==0)
			c="no";
		if(d.length()==0)
			d="no";
		if(e.length()==0)
			e="no";
		return a.trim() + "," + b.trim() + "," + c.trim() + "," + d.trim() + "," + e.trim() ;
	}
	

}
