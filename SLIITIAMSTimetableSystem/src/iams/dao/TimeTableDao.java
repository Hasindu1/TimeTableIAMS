package iams.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import iams.modal.Batch;
import iams.modal.Halls;
import iams.modal.Modules;
import iams.modal.TimeTable;

public class TimeTableDao {
	private String dbUrl = "jdbc:mysql://localhost:3306/sliitiams";
	private String dbUname = "root";
	private String dbPassword = "root";
	private String dbDriver = "com.mysql.jdbc.Driver";

	/*
	 * IMPORTANT : PLEASE DON'T CHANGE THE DATE !
	 */
	private static final String TIMESTAMP_DATE = "1970-01-01 ";

	public void loadDriver(String dbDriver) {

		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

	/**
	 * Allocates timeslot
	 * 
	 * @param timeTable
	 */
	public void allocateTimeSlot(TimeTable timeTable) {

		loadDriver(dbDriver);
		Connection con = getConnection();

		String sql = "INSERT INTO timetable (startTime,endTime,day,instroctorName,batchid,location,tag,moduleCode)  VALUES(?,?,?,?,?,?,?,?)";

		try {

			String formattedStartTime = TIMESTAMP_DATE
					+ timeTable.getStartTime().replace(".", ":").concat(":").concat("00");
			String formattedEndTime = TIMESTAMP_DATE
					+ timeTable.getEndTime().replace(".", ":").concat(":").concat("00");
			Timestamp startTime = Timestamp.valueOf(formattedStartTime);
			Timestamp endTime = Timestamp.valueOf(formattedEndTime);

			PreparedStatement statement = con.prepareStatement(sql);
			statement.setTimestamp(1, startTime);
			statement.setTimestamp(2, endTime);
			statement.setString(3, timeTable.getDay());
			statement.setString(4, timeTable.getInstructor().getIname().trim());
			statement.setString(5, timeTable.getBatch().getBatchId());
			statement.setString(6, timeTable.getHall().getHallName());
			statement.setString(7, timeTable.getTag());
			statement.setString(8, timeTable.getModule().getModulecode());

			statement.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * Checks the availability of instructor,location and batch for a specific time
	 * slot in a given day
	 * 
	 * @param timeTable
	 * @return
	 */
	public boolean checkAvailability(TimeTable timeTable) {
		loadDriver(dbDriver);
		Connection con = getConnection();

		try {

			String sql = "SELECT timetable.id FROM timetable WHERE ((day = ?) AND ((instroctorName = ?)  OR (batchid = ? )OR (location = ?) )) AND ((startTime BETWEEN  ? and ?) OR\r\n"
					+ "(endTime BETWEEN ? AND ?) OR (startTime <= ? AND endTime >= ?))";

			String newStartTime = timeTable.getStartTime().replace(".", ":").replace("00", "01").replace("30", "31")
					.concat(":00");

			String foramttedStartTime = TIMESTAMP_DATE.concat(newStartTime);

			String newEndTime = timeTable.getEndTime().replace(".", ":").concat(":00");
			String formattedEndTime = TIMESTAMP_DATE.concat(newEndTime);

			PreparedStatement preparedStatement = con.prepareStatement(sql);
			preparedStatement.setString(1, timeTable.getDay());
			preparedStatement.setString(2, timeTable.getInstructor().getIname().trim());
			preparedStatement.setString(3, timeTable.getBatch().getBatchId());
			preparedStatement.setString(4, timeTable.getHall().getHallName());
			preparedStatement.setString(5, foramttedStartTime);
			preparedStatement.setString(6, formattedEndTime);
			preparedStatement.setString(7, foramttedStartTime);
			preparedStatement.setString(8, formattedEndTime);
			preparedStatement.setString(9, foramttedStartTime);
			preparedStatement.setString(10, formattedEndTime);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return true;

	}

	/**
	 * Get timeslot by instructor and day
	 * 
	 * @param instructorName
	 * @param day
	 * @return
	 */
	public List<TimeTable> getTimeTableByInstructorAndDay(String instructorName, String day) {

		loadDriver(dbDriver);
		Connection con = getConnection();
		List<TimeTable> timeTableTimeSlotsList = new ArrayList<>();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");

		try {

			String sql = "SELECT t.startTime,t.endTime,t.tag,t.batchId,h.hallname,m.moduleName FROM timetable t  ,halls h,modulelist m WHERE day = ? AND instroctorName = ?   AND  h.hallname = t.location AND m.modulecode = t.moduleCode";
			PreparedStatement preparedStatement = con.prepareStatement(sql);
			String formattedInstructorName = instructorName.trim();
			preparedStatement.setString(1, day);
			preparedStatement.setString(2, formattedInstructorName);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				TimeTable currentTimeSlot = new TimeTable();
				Batch currentBatch = new Batch();
				Halls currentHall = new Halls();
				Modules currentModules = new Modules();
				Date startDateTime = new Date();
				Date endDateTime = new Date();
				startDateTime.setHours(resultSet.getTimestamp(1).getHours());
				startDateTime.setMinutes(resultSet.getTimestamp(1).getMinutes());
				endDateTime.setHours(resultSet.getTimestamp(2).getHours());
				endDateTime.setMinutes(resultSet.getTimestamp(2).getMinutes());

				String foramttedStartTime = simpleDateFormat.format(startDateTime);
				String foramttedEndTime = simpleDateFormat.format(endDateTime);
				;
				currentTimeSlot.setStartTime(foramttedStartTime);
				currentTimeSlot.setEndTime(foramttedEndTime);
				currentTimeSlot.setTag(resultSet.getString(3));
				currentBatch.setBatchId(resultSet.getString(4));
				currentHall.setHallName(resultSet.getString(5));
				currentModules.setModuleName(resultSet.getString(6));
				currentTimeSlot.setBatch(currentBatch);
				currentTimeSlot.setHall(currentHall);
				currentTimeSlot.setModule(currentModules);

				timeTableTimeSlotsList.add(currentTimeSlot);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return timeTableTimeSlotsList;

	}

}
