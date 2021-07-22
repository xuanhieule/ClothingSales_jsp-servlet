/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 21, 2021
 * version 1.0
 */
package model.bean;

import java.util.ArrayList;

public class Order {
	private int id_user;
	private ArrayList<Products> listProduct = new  ArrayList<Products>();
	private double total=0;
	public Order() {
	}
	public Order(ArrayList<Products>listProduct,int id_user) {
		this.listProduct =listProduct;
		this.id_user = id_user;
		for(Products pro : listProduct) {
			total += pro.getTotal();
		}
		if(total<30000) {
			total+=30000;
		}
	}
	public int getUser() {
		return id_user;
	}
	public void setUser(int id_user) {
		this.id_user = id_user;
	}
	public ArrayList<Products> getListProduct() {
		return listProduct;
	}
	public void setListProduct(ArrayList<Products> listProduct) {
		this.listProduct = listProduct;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	

}
