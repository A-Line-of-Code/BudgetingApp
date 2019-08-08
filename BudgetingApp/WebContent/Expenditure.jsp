<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenditure</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>	
	<h1>EXPENDITURE</h1>
	<h3>Please enter details in correct format</h3>
	
	<form method="post" action="Expenditure">
		<table>

			<tr><td><input type="text" name="date" placeholder = "DD/MM/YYYY"></td></tr>
			<tr><td><input type="text" name="day" placeholder = "Monday"></td></tr>
			<tr><td><input type="text" name="item" placeholder = "Item"></td></tr>
			<tr><td><input type="text" name="cost" placeholder = "10"></td></tr>		
			<tr><td><input type="submit" id="button" value = "Add"></td></tr>
		</table>
	</form>	
</body>
</html>