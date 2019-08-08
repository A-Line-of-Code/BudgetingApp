<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Saving</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>	
	<h1>SAVING</h1>
	<h3>Please enter details in correct format when entering Date values</h3>
	
	<form method="post" action="Saving">
		<table>
			<tr><td><input type="text" name="goal" placeholder = "Total Cost of Goal"></td></tr>
			<tr><td><input type="text" name="starting_amount" placeholder = "Starting Amount"></td></tr>
			<tr><td><input type="text" name="start_date" placeholder = "DD/MM/YYYY"></td></tr>
			<tr><td><input type="text" name="end_date" placeholder = "DD/MM/YYYY"></td></tr>		
			<tr><td><input type="submit" id="button" value = "Calculate"></td></tr>
		</table>
	</form>	
</body>
</html>