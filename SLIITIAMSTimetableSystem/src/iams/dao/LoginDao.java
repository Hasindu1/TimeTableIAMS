package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

import iams.modal.LoginBean;

public class LoginDao {
	

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
 
	
	
	public boolean validate(LoginBean loginBean) {
		 loadDriver(dbDriver);
		 Connection con = getConnection();
		 boolean status = false;
		 String sql = "select * from createaccount where empNo = ? and password = ?";
		
		 PreparedStatement ps;
		 try {
			ps=con.prepareStatement(sql);
			ps.setString(1, loginBean.getEmpno());
			ps.setString(2, loginBean.getPassword());
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
		  return status;
	}
	

}
