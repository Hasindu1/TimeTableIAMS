package iams.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.TimeTableDao;
import iams.modal.Batch;
import iams.modal.Halls;
import iams.modal.Instroctor;
import iams.modal.Modules;
import iams.modal.TimeTable;

/**
 * Handes the requests related to the Save Timetable
 * 
 * @author Hasindu Dahanayake
 *
 */

@WebServlet("/SaveTimeTableServelet")
public class SaveTimeTableServelet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private TimeTableDao timeTableDao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveTimeTableServelet() {
		super();

		this.timeTableDao = new TimeTableDao();

		// TODO Auto-generated constructor stub
	}

	/**
	 * Handles the request to save timetable
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		saveTimeTable(request, response);

	}

	/**
	 * Save timetable by validating the availability
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void saveTimeTable(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TimeTable timeTable = new TimeTable();
		timeTable.setDay(request.getParameter("day"));

		timeTable.setTag(request.getParameter("tag"));

		timeTable.setStartTime(request.getParameter("startTime"));
		timeTable.setEndTime(request.getParameter("endTime"));

		Batch batch = new Batch();
		batch.setBatchId(request.getParameter("batch"));
		timeTable.setBatch(batch);
		Modules module = new Modules();
		module.setModulecode(request.getParameter("module"));
		timeTable.setModule(module);
		Halls hall = new Halls();
		hall.setHallName(request.getParameter("hall"));
		timeTable.setHall(hall);
		Instroctor instroctor = new Instroctor();
		instroctor.setIname(request.getParameter("instructor"));
		timeTable.setInstructor(instroctor);

		if (timeTableDao.checkAvailability(timeTable)) {
			timeTableDao.allocateTimeSlot(timeTable);
			response.setContentType("text/plain");
			response.getWriter().write("SUCCESS");
		} else {
			response.setContentType("text/plain");
			response.getWriter().write("FAILED");
		}

	}

}
