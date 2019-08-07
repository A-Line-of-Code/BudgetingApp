package myServlets;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import dao.DBConnection;

/*@WebServlet("/ExpenditureList")
public class ExpenditureList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String date = request.getParameter("date");
		ArrayList<Expenditure> expenditureList = DBConnection.expenditureList(date);
		request.setAttribute("expenditureList", expenditureList);
		response.sendRedirect("ExpenditureList.jsp");
	}

}*/

@WebServlet("/ExpenditureList")
public class ExpenditureList extends HttpServlet{
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String date = req.getParameter("date");
		req.setAttribute("expenditureList", DBConnection.expenditureList(date));
			
			RequestDispatcher rd = req.getRequestDispatcher("ExpenditureList.jsp");
			rd.forward(req, resp);			
	}	
}
