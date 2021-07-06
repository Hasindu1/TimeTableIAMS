package iams.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.HallDao;
import iams.modal.Halls;

/**
 * Servlet implementation class HallServelet
 */
@WebServlet("/HallServelet")
public class HallServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HallServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Halls hall = new Halls();
		
		hall.setHallId(request.getParameter("hallId"));
		hall.setHallName(request.getParameter("hallName"));
		hall.setBuilding(request.getParameter("building"));
		hall.setFloor(request.getParameter("floor"));
		hall.setMaxCapacity(request.getParameter("maxCapacity"));
		hall.setType(request.getParameter("type"));
		
		HallDao dao = new HallDao();
		dao.addHall(hall);
		response.sendRedirect("Halls.jsp");
	}

}
