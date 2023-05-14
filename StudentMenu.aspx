<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentMenu.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Student Portfolio</title>
    <style type="text/css">
        #form1 {
            height: auto;
        }
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		.header {
			background-color: #0072c6;
			color: white;
			padding: 10px;
			text-align: center;
		}
		.menu {
			background-color: #f2f2f2;
			border: 1px solid #ccc;
			border-radius: 5px;
			margin: 10px;
			padding: 10px;
		}
		.menu ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		.menu li {
			display: inline-block;
			margin-right: 10px;
		}
		.content {
			margin: 10px;
			padding: 10px;
		}
		.table {
			border-collapse: collapse;
			margin-top: 10px;
			width: 100%;
		}
		.table th, .table td {
			border: 1px solid #ccc;
			padding: 8px;
			text-align: left;
		}
		.table th {
			background-color: #0072c6;
			color: white;
		}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
	<div class="header">
		<h1>Student Profile</h1>
	</div>
	
	<!-- Navigation menu -->
	<div class="menu">
		<ul>
			<li><a href="#a">Attendance</a></li>
			<li><a href="#e">Evaluation Marks</a></li>
			<li><a href="#t">Transcript</a></li>
			<li><a href="#c">CGPA Comparison</a></li>
		    <li>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Student_.aspx">Course Feedback</asp:HyperLink>
            </li>
		</ul>
	</div>
	
	<!-- Main content -->
	<div class="content">
		<!-- Attendance table -->
		<h2 id="a">Attendance</h2>
		<table class="table">
			<thead>
				<tr>
					<th>Course Code</th>
					<th>Course Name</th>
					<th>Total Classes</th>
					<th>Attended Classes</th>
					<th>Percentage</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>CSC101</td>
					<td>Introduction to Computer Science</td>
					<td>20</td>
					<td>18</td>
					<td>90%</td>
				</tr>
				<tr>
					<td>CSC201</td>
					<td>Data Structures and Algorithms</td>
					<td>30</td>
					<td>25</td>
					<td>83.33%</td>
				</tr>
				<!-- Add more rows for other courses -->
			</tbody>
		</table>
		<!-- Evaluation marks table -->
		<h2 id="e">Evaluation Marks</h2>
		<table class="table">
			<thead>
				<tr>
					<th>Course Code</th>
					<th>Course Name</th>
					<th>Assignment Marks</th>
					<th>Midterm Marks</th>
					<th>Final Exam Marks</th>
					<th>Total Marks</th>
					</tr>
		</thead>
		<tbody>
			<tr>
				<td>CSC101</td>
				<td>Introduction to Computer Science</td>
				<td>90</td>
				<td>80</td>
				<td>75</td>
				<td>245</td>
			</tr>
			<tr>
				<td>CSC201</td>
				<td>Data Structures and Algorithms</td>
				<td>95</td>
				<td>85</td>
				<td>80</td>
				<td>260</td>
			</tr>
			<!-- Add more rows for other courses -->
		</tbody>
	</table>
	
	<!-- Transcript -->
	<h2 id="t">Transcript</h2>
	<table class="table">
	<thead>
		<tr>
			<th>Semester</th>
			<th>Course Code</th>
			<th>Course Name</th>
			<th>Grade</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>CSC101</td>
			<td>Introduction to Computer Science</td>
			<td>B+</td>
		</tr>
		<tr>
			<td>1</td>
			<td>CSC102</td>
			<td>Discrete Mathematics</td>
			<td>A-</td>
		</tr>
		<tr>
			<td>1</td>
			<td>CSC103</td>
			<td>English Composition and Comprehension</td>
			<td>B</td>
		</tr>
		<!-- Add more rows for other courses in 1st semester -->
		<tr>
			<td>2</td>
			<td>CSC201</td>
			<td>Data Structures and Algorithms</td>
			<td>A-</td>
		</tr>
		<tr>
			<td>2</td>
			<td>CSC202</td>
			<td>Database Systems</td>
			<td>B+</td>
		</tr>
		<tr>
			<td>2</td>
			<td>CSC203</td>
			<td>Operating Systems</td>
			<td>A</td>
		</tr>
		<!-- Add more rows for other courses in 2nd semester -->
		<!-- Add rows for other semesters -->
	</tbody>
</table>
	
	<!-- CGPA Comparison graph -->
	<h2 id="c">CGPA Comparison</h2>
		<table class="table">
			<thead>
				<tr>
					<th>Semester</th>
					<th>SGPA</th>
					<th>CGPA</th>
					</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>2.2</td>
				<td>2.2</td>
			</tr>
			<tr>
				<td>2</td>
				<td>3</td>
				<td>2.6</td>
			</tr>
			<!-- Add more rows for other courses -->
		</tbody>
	</table>
	</div>

    </form>
</body>
</html>
