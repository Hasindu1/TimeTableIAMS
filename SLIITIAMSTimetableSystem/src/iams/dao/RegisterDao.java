package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import iams.modal.Member;

public class RegisterDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/sliitiams";
	private String dbUname = "root";
	private String dbPassword = "root";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	
	public void loadDriver(String dbDriver){
		
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Connection getConnection(){
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	public boolean insert(Member member){
		boolean add = true;
		loadDriver(dbDriver);
		Connection con = getConnection();
		String result = "Data entered Successfully";
		String sql = "insert into createaccount(`empNo`,`userName`,`userType`,`password`,`repassword`) values(?,?,?,?,?)";
		
		if(checkAvailability(member.getEmpNo())){
		java.sql.PreparedStatement ps;
		try{
		ps=  (java.sql.PreparedStatement) con.prepareStatement(sql);
		ps.setString(1, member.getEmpNo());
		ps.setString(2, member.getUserName());
		ps.setString(3, member.getUserType());
		ps.setString(4, member.getPassword());
		ps.setString(5, member.getRepassword());
		
		ps.executeUpdate();
		add = true;
		}catch(SQLException e){
			e.printStackTrace();
		}
				}else{
			add = false;
		}
		return add;
	
	
		
	}
	
public boolean checkAvailability(String id){
		
		boolean aval = true;
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM createaccount WHERE `empNo`='"+id+"'";
		
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result =  statement.executeQuery();
			if(result.next()){
				aval = false;
			}else{
				aval = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return aval;
	}
	
	

}
