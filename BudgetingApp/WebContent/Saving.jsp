<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.util.*; java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Saving</title>

<style type="text/css">
body {
  background-color: lightblue;
  text-align: center;
}

form {
  display: inline-block;
  background: #FFFFFF;
  max-width: 360px;
  padding: 50px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

h1 {
	colour: black;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
}

h3 {
	colour: black;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
}

td {
	colour: black;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
}

input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}

input[type=submit] {
  width: 60%;
  padding: 12px 20px;
}
</style>
</head>

<body>	
	<h1>SAVING</h1>
	<h3>Please enter details in correct format when entering Date values</h3>
	
	<form method="post" action="saving">
		<table>
			<tr><td><input type="text" name="goal" placeholder = "Total Cost of Goal"></td></tr>
			<tr><td><input type="text" name="starting_amount" placeholder = "Starting Amount"></td></tr>
			<tr><td><input type="text" name="start_date" placeholder = "DD/MM/YYYY"></td></tr>
			<tr><td><input type="text" name="end_date" placeholder = "DD/MM/YYYY"></td></tr>		
			<tr><td><input type="submit" id="button" value = "Calculate"></td></tr>
		</table>
	</form>	
	
	<%
	
	
	String goal = request.getParameter("goal");
	String starting_amount = request.getParameter("starting_amount");
	String start_date = request.getParameter("start_date");
	String end_date = request.getParameter("end_date");
	
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
	
	JOptionPane.showMessageDialog( null, test );
    %>
</body>
</html>