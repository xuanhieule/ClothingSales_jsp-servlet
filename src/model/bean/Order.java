/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 21, 2021
 * version 1.0
 */
package model.bean;

import java.util.ArrayList;

public class Order {
	private Users user;
	private ArrayList<Products> listProduct = new  ArrayList<Products>();
	private double total=0;
	public Order() {
	}
	public Order(ArrayList<Products>listProduct,Users user) {
		this.listProduct =listProduct;
		this.user = user;
		for(Products pro : listProduct) {
			total += pro.getTotal();
		}
		if(total<30000) {
			total+=30000;
		}
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
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
