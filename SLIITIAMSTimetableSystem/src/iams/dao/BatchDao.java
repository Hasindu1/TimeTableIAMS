package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.imageio.spi.OutputStreamImageOutputStreamSpi;

import iams.modal.Batch;

public class BatchDao {

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
	
	public void addBatch(Batch batch){
	
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "INSERT INTO batches VALUES('"+batch.getBatchId()+"')";
		
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}

	}
	
	public ArrayList<Batch> getAllBatches(){
		ArrayList<Batch> batchList = new ArrayList<Batch>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM batches";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Batch batch = new Batch();
				batch.setBatchId(result.getString(1));
				
				batchList.add(batch);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return batchList;
	}
	
	public void deleteBatch(String id){
		loadDriver(dbDriver);
		Connection con = getConnection();
		System.out.println(id);
		String sql = "DELETE FROM batches WHERE `BatchID` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			statement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Batch> getBatch(String id){
		ArrayList<Batch> batchList = new ArrayList<Batch>();
		
		loadDriver(dbDriver);
		Connection con = getConnection();
		
		String sql = "SELECT * FROM batches WHERE `BatchID` = '"+id+"'";
		try{
			PreparedStatement statement = con.prepareStatement(sql);
			ResultSet result = statement.executeQuery();
			
			while(result.next()){
				Batch batch = new Batch();
				
				batchList.add(batch);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return batchList;
	}
	
}
