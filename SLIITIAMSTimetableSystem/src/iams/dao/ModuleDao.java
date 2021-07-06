package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.imageio.spi.OutputStreamImageOutputStreamSpi;

import iams.modal.Modules;;

public class ModuleDao{

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
	
	public void addModule(Modules module){
	
		loadDriver(dbDriver);
		Connection con = getConnection();
	
		String sql = "INSERT INTO modulelist VALUES('"+module.getModulecode()+"','"+module.getModuleName()+"','"+module.getAcademicYearSem()+"','"+module.getLectureIncharge()+"')";
		
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}

	}
	
	public ArrayList<Modules> getModules(){
		ArrayList<Modules> moduleList = new ArrayList<Modules>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM modulelist";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Modules modules = new Modules();
				modules.setModulecode(result.getString(1));
				modules.setModuleName(result.getString(2));
				modules.setAcademicYearSem(result.getString(3));
				modules.setLectureIncharge(result.getString(4));
				
				moduleList.add(modules);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return moduleList;
	}
	
	public void deleteModule(String id){
		loadDriver(dbDriver);
		Connection con = getConnection();
		System.out.println(id);
		String sql = "DELETE FROM modulelist WHERE `modulecode` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Modules> getModule(String id){
		ArrayList<Modules> moduleList = new ArrayList<Modules>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM modulelist WHERE `modulecode` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Modules modules = new Modules();
				modules.setModulecode(result.getString(1));
				modules.setModuleName(result.getString(2));
				modules.setAcademicYearSem(result.getString(3));
				modules.setLectureIncharge(result.getString(4));
				
			
				moduleList.add(modules);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return moduleList;
	}
	
}
