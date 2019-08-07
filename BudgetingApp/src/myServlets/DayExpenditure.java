package myServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;

@WebServlet("/DayExpenditure")
public class DayExpenditure extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  /*  public Expenditure_servlet() {
        super();
    }*/
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String date = request.getParameter("date");
		String day = request.getParameter("day");
		String item = request.getParameter("item");
		String cost = request.getParameter("cost");
		DBConnection.expenditure(date, day, item, cost);
		response.sendRedirect("ExpenditureList.jsp");
	}

}
