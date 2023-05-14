<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GradeReport.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade Report</title>
    <style>
    body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0px 0px 10px #ccc;
}

.title {
	background-color: #0077be;
	padding: 20px;
	border-radius: 10px 10px 0 0;
}

h1 {
	color: #fff;
	text-align: center;
	margin: 0;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
.button {
	margin-top: 20px;
	text-align: center;
}

button {
	background-color: #3498db;
	color: #fff;
	padding: 10px 20px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #2980b9;
}

td:nth-child(1),
td:nth-child(3),
td:nth-child(4),
td:nth-child(5) {
	width: 20%;
}

td:nth-child(2) {
	width: 40%;
}

@media screen and (max-width: 600px) {
	table {
		font-size: 12px;
	}

	td, th {
		padding: 5px;
	}
}

  </style>
</head>
<body>
	<div class="container">
		<div class="title">
			<h1>Grade Report</h1>
		</div>
		<table>
			<thead>
				<tr>
					<th>Registration Number</th>
					<th>Name</th>
					<th>Section</th>
					<th>Course</th>
					<th>Grade</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>001</td>
					<td>John Smith</td>
					<td>A</td>
					<td>Mathematics</td>
					<td>A-</td>
				</tr>
				<tr>
					<td>002</td>
					<td>Jane Doe</td>
					<td>B</td>
					<td>Physics</td>
					<td>B+</td>
				</tr>
				<tr>
					<td>003</td>
					<td>Bob Johnson</td>
					<td>A</td>
					<td>Chemistry</td>
					<td>C</td>
				</tr>
				<!-- Add more rows for each student's grade here -->
			</tbody>
		</table>
		<form runat="server">
		<div class="button">
			<asp:Button runat="server" HREF="InstructorMenu.aspx" Text = "Back" />
		</div>
			</form>
	</div>
</body>
</html>
