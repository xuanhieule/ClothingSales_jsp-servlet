/* 
 * @author	Xuan Hieu Le
 * contact: xuanhieu.le.1999@gmail.com
 * @date Jul 19, 2021
 * version 1.0
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Products;
import util.ConnectDBLibrary;

public class ProductsDao {
	private ConnectDBLibrary connectDB;
	private Statement st;
	private Connection con;
	private ResultSet rs;
	private PreparedStatement pst;

	public ProductsDao() {
		connectDB = new ConnectDBLibrary();
	}
	public ArrayList<Products> getAllProducts(){
		ArrayList<Products> products = new ArrayList<Products>();
		con = connectDB.getConnection();
		String sql = "SELECT P.id, C.name, P.name,P.content,P.price,P.discount,P.image FROM product AS P INNER JOIN category AS C ON P.id_category = C.id_category";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				Products productTemp = new Products(rs.getInt("P.id"),rs.getString("C.name"), rs.getNString("P.name"),rs.getNString("content"),rs.getDouble("price"),rs.getDouble("discount"),rs.getString("image"));
				products.add(productTemp);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,st,rs);
		}
		return products;
	}
	public Products getProductById(int id){
		Products proTemp = null;
		con = connectDB.getConnection();
		String sql = "SELECT * FROM product WHERE id= ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()) {
				proTemp = new Products(rs.getInt("id"),rs.getInt("id_category"), rs.getNString("name"),rs.getNString("content"),rs.getDouble("price"),rs.getDouble("discount"),rs.getString("image"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con, pst);
		}
		return proTemp;
	}
	public ArrayList<Products> getProductsByCategory(int id){
		ArrayList<Products> products = new ArrayList<Products>();
		con = connectDB.getConnection();
		String sql = "SELECT P.id, C.name, P.name,P.content,P.price,P.discount,P.image FROM product AS P INNER JOIN category AS C ON P.id_category = C.id_category WHERE P.id_category= ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			System.out.println(pst);
			while(rs.next()) {
				Products productTemp = new Products(rs.getInt("P.id"),rs.getString("C.name"), rs.getNString("P.name"),rs.getNString("content"),rs.getDouble("price"),rs.getDouble("discount"),rs.getString("image"));
				products.add(productTemp);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,pst);
		}
		return products;
	}
	
	public int addProduct(Products pro) {
		int result = 0;
		con = connectDB.getConnection();
		
		String sql = "INSERT INTO product(id_category,name,content,price,discount,image) VALUE (?,?,?,?,?,?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, pro.getId_category());
			pst.setNString(2, pro.getName());
			pst.setNString(3, pro.getContent());
			pst.setDouble(4, pro.getPrice());
			pst.setDouble(5, pro.getDiscount());
			pst.setNString(6, pro.getImage());
			
			result = pst.executeUpdate(); // thành công: result >0
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,pst);
		}
		return result;
	}
	public int editProduct(Products productTemp) {
		System.out.println(productTemp);
		int result = 0;
		con = connectDB.getConnection();
		String sql = "UPDATE product SET id_category= ?, name= ?, content= ?, price= ?,  discount= ?, image= ?  WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, productTemp.getId_category());
			pst.setNString(2, productTemp.getName());
			pst.setNString(3, productTemp.getContent());
			pst.setDouble(4, productTemp.getPrice());
			pst.setDouble(5, productTemp.getDiscount());
			pst.setString(6, productTemp.getImage());
			pst.setInt(7, productTemp.getId());
			
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDB.close(con, pst);
		}
		return result;
	}
	
	public int deleteProduct(int id) {
		int result = 0;
		con = connectDB.getConnection();
		String sql = "DELETE FROM product WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDB.close(con, pst);
		}
		return result;
	}

}
