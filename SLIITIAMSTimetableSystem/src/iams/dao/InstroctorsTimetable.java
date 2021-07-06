package iams.dao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.imageio.spi.OutputStreamImageOutputStreamSpi;


public class InstroctorsTimetable {



	private String dbUrl = "jdbc:mysql://localhost:3306/sliitiams";
	private String dbUname = "root";
	private String dbPassword = "1234";
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
	
	
	
	public String getLecture(String name,HttpServletRequest request) throws ServletException, IOException{
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM lectures_instroctors Where name= " + name;
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			request.getSession().setAttribute("lecname",name);
			
		}catch(Exception e){
			request.getSession().setAttribute("lecname","Can not Find !");
		}
		return  name;
	}
//	
//	public void deleteInstroctor(String id){
//		loadDriver(dbDriver);
//		Connection con = getConnection();
//		System.out.println(id);
//		String sql = "DELETE FROM halls WHERE `hallId` = '"+id+"'";
//		try{
//			PreparedStatement statement = con.prepareStatement(sql);
//			statement.executeUpdate();
//			
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		
//	}
//	
//	public ArrayList<Halls> getHall(String id){
//		ArrayList<Halls> hallList = new ArrayList<Halls>();
//		
//		loadDriver(dbDriver);
//		Connection con = getConnection();
//		
//		String sql = "SELECT * FROM halls WHERE `hallId` = '"+id+"'";
//		try{
//			PreparedStatement statement = con.prepareStatement(sql);
//			ResultSet result = statement.executeQuery();
//			
//			while(result.next()){
//				Halls halls = new Halls();
//				halls.setHallId(result.getString(1));
//				halls.setHallName(result.getString(2));
//				halls.setBuilding(result.getString(3));
//				halls.setFloor(result.getString(4));
//				halls.setMaxCapacity(result.getString(5));
//				halls.setType(result.getString(6));
//			
//				hallList.add(halls);
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return hallList;
//	}
	
}
