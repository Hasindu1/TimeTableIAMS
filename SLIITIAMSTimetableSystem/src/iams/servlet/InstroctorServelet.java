package iams.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.InstroctorDao;
import iams.modal.Instroctor;

/**
 * Servlet implementation class HallServelet
 */
@WebServlet("/InstroctorServelet ")
public class InstroctorServelet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstroctorServelet() {
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
		Instroctor instroctor = new Instroctor();
		
		instroctor.setEmpno(request.getParameter("empno"));
		instroctor.setIname(request.getParameter("iname"));
		instroctor.setEmail(request.getParameter("email"));
		instroctor.setPhone(request.getParameter("phone"));
		instroctor.setDepartment(request.getParameter("department"));
		
		
		InstroctorDao dao = new InstroctorDao();
		dao.addInstroctor(instroctor);
		response.sendRedirect("EmployeeList.jsp");
	}

}
