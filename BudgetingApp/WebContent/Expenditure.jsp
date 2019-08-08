<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expenditure</title>

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
  width: 40%;
  padding: 12px 20px;
}
</style>
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