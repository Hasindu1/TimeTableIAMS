package iams.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import iams.dao.RegisterDao;
import iams.modal.Member;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		String empNo = request.getParameter("empNo");
		String userName = request.getParameter("userName");
		String userType = request.getParameter("userType");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		Member member = new Member(empNo,userName,userType,password,repassword);
		RegisterDao rDao = new RegisterDao();
		boolean result = rDao.insert(member);
		if(result){
			request.setAttribute("member", member);
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}else{

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CreateAccount.jsp");
			dispatcher.forward(request, response);
		}

	}

}
