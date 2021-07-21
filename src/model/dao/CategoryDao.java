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

import model.bean.Category;
import util.ConnectDBLibrary;

public class CategoryDao {

	private ConnectDBLibrary connectDB;
	private Statement st;
	private Connection con;
	private ResultSet rs;
	private PreparedStatement pst;
	
	public CategoryDao() {
		connectDB = new ConnectDBLibrary();
	}
	
	
	public ArrayList<Category> getAllCategory(){
		ArrayList<Category> category = new ArrayList<Category>();
		con = connectDB.getConnection();
		String sql = "SELECT * FROM category";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				Category catTemp = new Category(rs.getInt("id_category"), rs.getNString("name"));
				category.add(catTemp);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,st,rs);
		}
		return category;
	}
	public Category getCategoryById(int id){
		Category catTemp = null;
		con = connectDB.getConnection();
		String sql = "SELECT * FROM category WHERE id_category= ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()) {
				catTemp = new Category(rs.getInt("id_category"), rs.getNString("name"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con, pst);
		}
		return catTemp;
	}
	
	public int addCategory(Category cat) {
		int result = 0;
		con = connectDB.getConnection();
		
		String sql = "INSERT INTO category(name) VALUE (?)";
		try {
			pst = con.prepareStatement(sql);
			pst.setNString(1, cat.getName());
			result = pst.executeUpdate(); // thành công: result >0
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,pst);
		}
		return result;
	}
	public int editCategory(int id, String name) {
		int result = 0;
		System.out.println("assssssssssssssssssssssssssssssssssssssss:"+id+name);
		con = connectDB.getConnection();
		String sql = "UPDATE category SET name= ? WHERE id_category = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setNString(1, name);
			pst.setInt(2, id);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDB.close(con, pst);
		}
		return result;
	}
	
	public int deleteCategory(int id) {
		int result = 0;
		con = connectDB.getConnection();
		String sql = "DELETE FROM category WHERE id_category = ?";
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
