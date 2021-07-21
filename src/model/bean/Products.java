/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 19, 2021
 * version 1.0
 */
package model.bean;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class Products {
	private int id;
	private int id_category;
	private String name;
	private String content;
	private double price;
	private double discount;
	private String image;
	private Date create_at;
	private String category_name;
	private int qty;
	private double total;
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	public Products() {
		
		
	}
	
	public Products(int id, int id_category, String name, String content, double price, double discount, String image) {
		this.id = id;
		this.id_category = id_category;
		this.name = name;
		this.content = content;
		this.price = price;
		this.discount = discount;
		this.image = image;
	}
	public Products(int id, String name, String image, double price, int qty) {
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.qty = qty;
		this.total = qty*price;
	}
	public Products(int id, String category_name, String name, String content, double price, double discount, String image) {
		this.id = id;
		this.category_name = category_name;
		this.name = name;
		this.content = content;
		this.price = price;
		this.discount = discount;
		this.image = image;
	}

	public Products(int id_category, String name, String content, double price, double discount, String image) {
		this.id_category = id_category;
		this.name = name;
		this.content = content;
		this.price = price;
		this.discount = discount;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_category() {
		return id_category;
	}

	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	
	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}
	

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", id_category=" + id_category + ", name=" + name + ", content=" + content
				+ ", price=" + price + ", discount=" + discount + ", image=" + image + ", create_at=" + create_at
				+ ", category_name=" + category_name + "]";
	}
	

}
