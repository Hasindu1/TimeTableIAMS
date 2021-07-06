package iams.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.ModuleDao;
import iams.modal.Modules;

/**
 * Servlet implementation class HallServelet
 */
@WebServlet("/ModuleServelet")
public class ModuleServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModuleServelet() {
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
		Modules module = new Modules();
		
		module.setModulecode(request.getParameter("modulecode"));
		module.setModuleName(request.getParameter("moduleName"));
		module.setAcademicYearSem(request.getParameter("academicYearSem"));
		module.setLectureIncharge(request.getParameter("lectureIncharge"));
		
		
		ModuleDao dao = new ModuleDao();
		dao.addModule(module);
		response.sendRedirect("Modules.jsp");
	}

}
