<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AttendanceReport.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <title>Attendance Sheet Report</title>
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

td:nth-child(1),
td:nth-child(3),
td:nth-child(4) {
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
			<h1>Attendance Sheet Report</h1>
		</div>
		<table>
			<thead>
				<tr>
					<th>Registration Number</th>
					<th>Name</th>
					<th>Attendance</th>
					<th>Percentage</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>101</td>
					<td>John Smith</td>
					<td>20/25</td>
					<td>80%</td>
				</tr>
				<tr>
					<td>102</td>
					<td>Jane Doe</td>
					<td>23/25</td>
					<td>92%</td>
				</tr>
				<tr>
					<td>103</td>
					<td>Bob Johnson</td>
					<td>18/25</td>
					<td>72%</td>
				</tr>
				<!-- Add more rows for each student here -->
			</tbody>
		</table>
		
		<a href="InstructorMenu.aspx">Go Back</a>
	
		
			</div>
</body>
</html>
