package iams.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;

import iams.dao.TimeTableDao;
import iams.modal.TimeTable;

/**
 * Handles the requests related to the Timeslots data
 * 
 * @author Hasindu Dahanayake
 *
 */
@WebServlet("/TimeSlotServelet")
public class TimeSlotServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TimeTableDao timeTableDao;

	public TimeSlotServelet() {
		super();
		this.timeTableDao = new TimeTableDao();
		// TODO Auto-generated constructor stub
	}

	/**
	 * Fetch all the relevant time slots for a given instructor and day by calling
	 * the database and set the data to the response
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<TimeTable> timeSlotList = timeTableDao.getTimeTableByInstructorAndDay(request.getParameter("instructor"),
				request.getParameter("day"));
		Gson gson = new Gson();
		JsonElement jsonElement = gson.toJsonTree(timeSlotList, new TypeToken<List<TimeTable>>() {
		}.getType());
		JsonArray jsonArray = jsonElement.getAsJsonArray();
		response.setContentType("application/json");
		response.getWriter().print(jsonArray);

	}

}
