//package iams.servlet;
//
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import iams.dao.HallsDao;
//import iams.modal.Halls;
//
///**
// * Servlet implementation class HallsServlet
// */
//@WebServlet("/Halls")
//public class HallsServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public HallsServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//	
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		String hallId = request.getParameter("hallId");
//		String hallName = request.getParameter("hallname");
//		String building = request.getParameter("building");
//		String floor = request.getParameter("floor");
//		String maxCapacity = request.getParameter("maxCapacity");
//		String  type = request.getParameter("type");
//		
//		Halls newHall = new Halls(hallId,hallName, building,floor,maxCapacity,type);
//
//		HallsDao hallsDao = new HallsDao();
//		hallsDao.insertHalls(newHall);
//		response.sendRedirect("list");
//	}
//	
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
////		String action = request.getServletPath();
////
////		try {
////			switch (action) {
////			case "/new":
////				showNewForm(request, response);
////				break;
////			case "/insert":
////				insertHall(request, response);
////				break;
////			case "/delete":
////				deleteHall(request, response);
////				break;
////			case "/edit":
////				showEditForm(request, response);
////				break;
////			case "/update":
////				updateHall(request, response);
////				break;
////			default:
////				listHall(request, response);
////				break;
////			}
////		} catch (SQLException ex) {
////			throw new ServletException(ex);
////		}
//	}
//
////	private void listHall(HttpServletRequest request, HttpServletResponse response)
////			throws SQLException, IOException, ServletException {
////		List<Halls> listHall = hallsDao.selectAllHalls();
////		request.setAttribute("listHall", listHall);
////		RequestDispatcher dispatcher = request.getRequestDispatcher("Halls.jsp");
////		dispatcher.forward(request, response);
////	}
////
////	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
////			throws ServletException, IOException {
////		RequestDispatcher dispatcher = request.getRequestDispatcher("Halls.jsp");
////		dispatcher.forward(request, response);
////	}
////
////	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
////			throws SQLException, ServletException, IOException {
////		int hallId = Integer.parseInt(request.getParameter("hallId"));
////		Halls existingUser = hallsDao.selectHall(hallId);
////		RequestDispatcher dispatcher = request.getRequestDispatcher("Halls.jsp");
////		request.setAttribute("hall", existingUser);
////		dispatcher.forward(request, response);
////
////	}
////
////	private void insertHall(HttpServletRequest request, HttpServletResponse response) 
////			throws SQLException, IOException {
////		
////	
////		String hallId = request.getParameter("hallId");
////		String hallName = request.getParameter("hallName");
////		String building = request.getParameter("building");
////		String floor = request.getParameter("floor");
////		String maxCapacity = request.getParameter("maxCapacity");
////		String  type = request.getParameter(" type");
////		
////		Halls newHall = new Halls(hallName, building,floor,maxCapacity,type);
////		
////		hallsDao.insertHalls(newHall);
////		response.sendRedirect("list");
////	}
////
////	private void updateHall(HttpServletRequest request, HttpServletResponse response) 
////			throws SQLException, IOException {
////		int hallId = Integer.parseInt(request.getParameter("hallId"));
////		String hallName = request.getParameter("hallName");
////		String building = request.getParameter("building");
////		String floor = request.getParameter("floor");
////		String maxCapacity = request.getParameter("maxCapacity");
////		String  type = request.getParameter(" type");
////		
////
////		Halls halls = new Halls(hallName, building,floor,maxCapacity,type);
////		hallsDao.updateHall(halls);
////		response.sendRedirect("list");
////	}
////
////	private void deleteHall(HttpServletRequest request, HttpServletResponse response) 
////			throws SQLException, IOException {
////		int hallId = Integer.parseInt(request.getParameter("hallId"));
////		hallsDao.deleteHall(hallId);
////		response.sendRedirect("list");
////
////	}
//
//}
