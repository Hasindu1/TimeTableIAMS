package iams.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.imageio.spi.OutputStreamImageOutputStreamSpi;

import iams.modal.Instroctor;

public class InstroctorDao{

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
	
	public void addInstroctor(Instroctor instroctor){
	
		loadDriver(dbDriver);
		Connection con = getConnection();
	
		String sql = "INSERT INTO lectures_instroctors VALUES('"+instroctor.getEmpno()+"','"+instroctor.getIname()+"','"+instroctor.getEmail()+"','"+instroctor.getPhone()+"','"+instroctor.getDepartment()+"')";
		
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}

	}
	
	public ArrayList<Instroctor> getInstroctors(){
		ArrayList<Instroctor> instroctorList = new ArrayList<Instroctor>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM lectures_instroctors";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Instroctor instroctor = new Instroctor();
				instroctor.setEmpno(result.getString(1));
				instroctor.setIname(result.getString(2));
				instroctor.setEmail(result.getString(3));
				instroctor.setPhone(result.getString(4));
				instroctor.setDepartment(result.getString(5));
				
				instroctorList.add(instroctor);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return instroctorList;
	}
	
	public void deleteInstroctor(String id){
		loadDriver(dbDriver);
		Connection con = getConnection();
		System.out.println(id);
		String sql = "DELETE FROM lectures_instroctors WHERE `iname` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Instroctor> getInstroctor(String id){
		ArrayList<Instroctor> instroctorList = new ArrayList<Instroctor>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM lectures_instroctors WHERE `iname` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Instroctor instroctor = new Instroctor();
				instroctor.setEmpno(result.getString(1));
				instroctor.setIname(result.getString(2));
				instroctor.setEmail(result.getString(3));
				instroctor.setPhone(result.getString(4));
				instroctor.setDepartment(result.getString(5));
				
			
				instroctorList.add(instroctor);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return instroctorList;
	}
	
}
