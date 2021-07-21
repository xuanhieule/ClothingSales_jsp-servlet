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

import model.bean.Users;
import util.ConnectDBLibrary;

public class UsersDao {
	private ConnectDBLibrary connectDB;
	private Statement st;
	private Connection con;
	private ResultSet rs;
	private PreparedStatement pst;

	public UsersDao() {
		connectDB = new ConnectDBLibrary();
	}
	
	public ArrayList<Users> getAllUsers(){
		ArrayList<Users> users = new ArrayList<Users>();
		con = connectDB.getConnection();
		String sql = "SELECT * FROM user";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				Users userTemp = new Users(rs.getInt("id"),rs.getNString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("address"), rs.getString("password"), rs.getInt("status"));
				users.add(userTemp);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,st,rs);
		}
		return users;
	}
	
	public int register(Users user) {
		int result = 0;
		con = connectDB.getConnection();
		if(login(user)==null) {
			con = connectDB.getConnection();
			String sql = "INSERT INTO user(name, email, phone, address, password) VALUE (?,?,?,?,?)";
			try {
				pst = con.prepareStatement(sql);
				pst.setString(1, user.getName());
				pst.setString(2, user.getEmail());
				pst.setString(3, user.getPhone());
				pst.setString(4, user.getAddress());
				pst.setString(5, user.getPassword());
				result = pst.executeUpdate(); // thành công: result >0
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				connectDB.close(con,pst);
			}
		}
		return result;
	}
	public Users login(Users user) {
		Users userTemp = null;
		con = connectDB.getConnection();
		
		String sql = "SELECT * From user WHERE email = ? AND password = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, user.getEmail());
			pst.setString(2, user.getPassword());
			rs = pst.executeQuery();
			while(rs.next()) {
				userTemp = new Users(rs.getNString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("address"), rs.getString("password"), rs.getInt("status"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			connectDB.close(con,pst);
		}
		return userTemp;
	}
	
	
	public int action(int id, int x) {
		int result = 0;
		int status = x ; // x= 0 block , x = 1 unlock
		con = connectDB.getConnection();
		String sql = "UPDATE user SET status = ? WHERE id = ?";
		try {
			pst = con.prepareStatement(sql);
			pst.setInt(1, status);
			pst.setInt(2, id);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDB.close(con, pst);
		}
		return result;
	}

	
}
