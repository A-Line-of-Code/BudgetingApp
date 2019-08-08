package myServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.text.*;
import java.util.*;
import javax.swing.*;

@WebServlet("/Saving")
public class Saving extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String goal = request.getParameter("goal");
		String starting_amount = request.getParameter("starting_amount");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		double test = calculateGoal(goal, starting_amount, start_date, end_date);
		JOptionPane.showMessageDialog( null, test );
	}
	
	public static double calculateGoal(String goal, String starting_amount, String start_date, String end_date) {
		double duration = 0.0;
		
		try {
			Date start = new SimpleDateFormat("dd/MM/yyyy").parse(start_date);
			Date end = new SimpleDateFormat("dd/MM/yyyy").parse(end_date);

			duration = end.getTime() - start.getTime();			
			
			duration = (duration / (24 * 60 * 60 * 1000)) / 7;
		} catch (Exception e) {
			e.printStackTrace();
		}

		double css = Double.parseDouble(goal);
		double ssc = Double.parseDouble(starting_amount);
		double amount = css - ssc;
		
		return amount - duration;
	}
}