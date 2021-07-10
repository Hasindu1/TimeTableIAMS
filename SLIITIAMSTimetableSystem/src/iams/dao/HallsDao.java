package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




import iams.modal.Halls;

public class HallsDao {

	private String dbUrl = "jdbc:mysql://localhost:3306/sliitiams";
	private String dbUname = "root";
	private String dbPassword = "root";
	private String dbDriver = "com.mysql.jdbc.Driver";
	

	private static final String INSERT_HALLS_SQL = "INSERT INTO halls" + "  (hallId, hallName, building,floor,maxCapacity,type) VALUES "
			+ " (?, ?, ?, ?, ?, ?);";

	private static final String SELECT_HALLS_BY_ID = "select hallName, building,floor,maxCapacity,type from halls where hallId =?";
	private static final String SELECT_ALL_HALLS = "select * from halls";
	private static final String DELETE_HALLS_SQL = "delete from halls where hallId = ?;";
	private static final String UPDATE_HALLS_SQL = "update halls set  hallName = ?,building= ?, floor =?,maxCapacity =? ,type =?  where hallId = ?;";

	public  HallsDao() {
		
	}
	
	
	
	
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
 

//insert

public void insertHalls(Halls halls) throws SQLException {
	loadDriver(dbDriver);
	System.out.println("SASA");
	String sql = "insert into halls(`hallId`,`hallName`,`building`,`floor`,`maxCapacity`,`type`) values(?,?,?,?,?,?)";
	// try-with-resource statement will auto close the connection.
	try (Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
		
		preparedStatement.setString(1,halls.getHallId());
		preparedStatement.setString(2, halls.getHallName());
		preparedStatement.setString(3, halls.getBuilding());
		preparedStatement.setString(4, halls.getFloor());
		preparedStatement.setString(5, halls.getMaxCapacity());
		preparedStatement.setString(6, halls.getType());
		//System.out.println(preparedStatement);
		preparedStatement.executeUpdate();
	} catch (SQLException e) {
		
		printSQLException(e);
		e.printStackTrace();
	}
}

//select by id

public Halls selectHall(int hallId) {
	Halls hall = null;
	// Step 1: Establishing a Connection
	try (Connection connection = getConnection();
			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_HALLS_BY_ID);) {
		preparedStatement.setInt(1, hallId);
		System.out.println(preparedStatement);
		// Step 3: Execute the query or update query
		ResultSet rs = preparedStatement.executeQuery();
		
		// Step 4: Process the ResultSet object.
		while (rs.next()) {
			String  hallName = rs.getString("hallName");
			String building = rs.getString("building");
			String floor = rs.getString("floor");
			String maxCapacity = rs.getString("maxCapacity");
			String type = rs.getString("type");
		
			hall = new Halls( hallName, building,floor,maxCapacity,type);
		}
	} catch (SQLException e) {
		printSQLException(e);
	}
	return hall;
}


//select all
public List<Halls> selectAllHalls() {

	// using try-with-resources to avoid closing resources (boiler plate code)
	List<Halls> halls = new ArrayList<>();
	// Step 1: Establishing a Connection
	try (Connection connection = getConnection();

			// Step 2:Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_HALLS);) {
		System.out.println(preparedStatement);
		// Step 3: Execute the query or update query
		ResultSet rs = preparedStatement.executeQuery();

		// Step 4: Process the ResultSet object.
		while (rs.next()) {
			String hallId = rs.getString("hallId");
			String  hallName = rs.getString("hallName");
			String building = rs.getString("building");
			String floor = rs.getString("floor");
			String maxCapacity = rs.getString("maxCapacity");
			String type = rs.getString("type");
			halls.add(new Halls(hallId,hallName, building,floor,maxCapacity,type));
		}
	} catch (SQLException e) {
		printSQLException(e);
	}
	return halls;
}



//update

public boolean updateHall(Halls halls) throws SQLException {
	boolean rowUpdated;
	try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(UPDATE_HALLS_SQL);) {

		statement.setString(1, halls.getHallName());
		statement.setString(2, halls.getBuilding());
		statement.setString(3, halls.getFloor());
		statement.setString(4, halls.getMaxCapacity());
		statement.setString(5, halls.getType());
		

		rowUpdated = statement.executeUpdate() > 0;
	}
	return rowUpdated;
}



//delete
public boolean deleteHall(int hallId) throws SQLException {
	boolean rowDeleted;
	try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(DELETE_HALLS_SQL);) {
		statement.setInt(1, hallId);
		rowDeleted = statement.executeUpdate() > 0;
	}
	return rowDeleted;
}


//sql exceptions
private void printSQLException(SQLException ex) {
	for (Throwable e : ex) {
		if (e instanceof SQLException) {
			e.printStackTrace(System.err);
			System.err.println("SQLState: " + ((SQLException) e).getSQLState());
			System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
			System.err.println("Message: " + e.getMessage());
			Throwable t = ex.getCause();
			while (t != null) {
				System.out.println("Cause: " + t);
				t = t.getCause();
			}
		}
	}
}

}