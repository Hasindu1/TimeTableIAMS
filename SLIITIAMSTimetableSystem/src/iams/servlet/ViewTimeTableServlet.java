package iams.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.BatchDao;
import iams.dao.HallDao;
import iams.dao.InstroctorDao;
import iams.dao.ModuleDao;
import iams.dao.TimeTableDao;
import iams.modal.Batch;
import iams.modal.Halls;
import iams.modal.Instroctor;
import iams.modal.Modules;

/**
 * Handels the requests related to the View Timetable
 * 
 * @author Hasindu Dahanayake
 *
 */
@WebServlet("/ViewTimeTableServelet")
public class ViewTimeTableServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private ModuleDao moduleDao;
	private BatchDao batchDao;
	private HallDao hallDao;
	private InstroctorDao instructorDao;

	public ViewTimeTableServlet() {
		super();
		this.moduleDao = new ModuleDao();
		this.batchDao = new BatchDao();
		this.hallDao = new HallDao();
		this.instructorDao = new InstroctorDao();

		// TODO Auto-generated constructor stub
	}

	/**
	 * Handles the request related to the view timetable
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		showTimeTable(request, response);
	}

	/**
	 * Calls the databse layer to fetch the data related tot the view timetable
	 * request and set the required parameters to the response object
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void showTimeTable(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Modules> listModule = moduleDao.getAllModulesCodeAndName();
		List<Batch> listBatch = batchDao.getAllBatches();
		List<Halls> listHall = hallDao.getAllHallsNameAndId();
		List<Instroctor> listInstructor = instructorDao.getAllInstructorsName();
		request.setAttribute("listModule", listModule);
		request.setAttribute("listBatch", listBatch);
		request.setAttribute("listHall", listHall);
		request.setAttribute("listInstructor", listInstructor);
		RequestDispatcher dispatcher = request.getRequestDispatcher("TimeTables.jsp");
		dispatcher.forward(request, response);

	}

}
