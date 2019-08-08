package myServlets;

import java.io.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.swing.*;
import java.text.*;
import java.util.*;

@WebServlet("/Saving")
public class Saving extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String goal = req.getParameter("goal");
		String starting_amount = req.getParameter("starting_amount");
		String start_date = req.getParameter("start_date");
		String end_date = req.getParameter("end_date");
		
		double amount = calculateGoal(goal, starting_amount, start_date, end_date);
		
		JOptionPane.showMessageDialog(null, "You need to save $" + amount + " each week!");
	}
	
	public static double calculateGoal(String goal, String starting_amount, String start_date, String end_date) {
		try {
			Date start = new SimpleDateFormat("dd/MM/yyyy").parse(start_date);
			Date end = new SimpleDateFormat("dd/MM/yyyy").parse(end_date);

			double duration = (end.getTime() - start.getTime()) / 1000 / 60 / 60 / 24 / 7;

			double doubleGoal = Double.parseDouble(goal);
			double doubleStartingAmount = Double.parseDouble(starting_amount);
		
			return (doubleGoal - doubleStartingAmount) / duration;
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			return -1;
	}
}