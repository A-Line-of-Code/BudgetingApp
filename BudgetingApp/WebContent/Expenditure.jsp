<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenditure</title>
</head>

<body>	
	<form method="post" action="expenditure">
		<table>
			<tr>
				<td><input type="text" name="date" placeholder = "DD/MM/YYYY"></td>
				<td><input type="text" name="day" placeholder = "Monday"></td>
				<td><input type="text" name="item" placeholder = "item"></td>
				<td><input type="text" name="cost" placeholder = "1"></td>				
			</tr>
			<tr>
				<td><input type="submit" id="button"></td>
			</tr>
		</table>
	</form>
		
	<div id="total"></div>
		
</body>
</html>