<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AssignedCources.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Faculty Courses</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}

		header {
			background-color: #333;
			color: #fff;
			padding: 20px;
			text-align: center; /* Center the header text */
		}

		h1 {
			margin: 0;
		}

		main {
			margin: 20px;
		}

		table {
			border-collapse: collapse;
			width: 100%;
		}

		th, td {
			padding: 12px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}

		th {
			background-color: #333;
			color: #fff;
		}

		footer {
			background-color: #333;
			color: #fff;
			padding: 20px;
			text-align: center;
		}
		
		.search-container {
			display: flex;
			align-items: center;
			margin-bottom: 10px;
		}

		.search-box {
			flex: 1;
			padding: 10px;
			border: none;
			border-radius: 5px;
			margin-right: 10px;
          	margin-top: 5px;
		}

		.search-button {
			background-color: #4CAF50;
			color: white;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}

		.search-button:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<header>
		<h1>Faculty Courses</h1>
		<label for="campus-select">Select Campus:</label>
		<select id="campus-select">
			<option value="campus1">Campus 1</option>
			<option value="campus2">Campus 2</option>
			<option value="campus3">Campus 3</option>
		</select>
		<label for="semester-select">Select Semester:</label>
		<select id="semester-select">
			<option value="spring">Spring</option>
			<option value="summer">Summer</option>
			<option value="fall">Fall</option>
			<option value="winter">Winter</option>
		</select>
	</header>

	<main>
      <div class="search-container">
			<input type="text" class="search-box" placeholder="Search for course" />
			<form runat="server">
		  <asp:Button runat="server" Text="Search" /></form>
		</div>
		<table>
			<thead>
				<tr>
					<th>Course Code</th>
					<th>Course Name</th>
					<th>Section</th>
					<th>Faculty Name</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>C1</td>
					<td>Introduction to Computer Science</td>
					<td>001</td>
					<td>John Doe</td>
				</tr>
				<tr>
					<td>C2</td>
					<td>Data Structures and Algorithms</td>
					<td>002</td>
					<td>Jane Smith</td>
				</tr>
			<tr>
				<td>C3</td>
				<td>Advanced Algorithms</td>
				<td>005</td>
				<td>David Kim</td>
			</tr>
			<tr>
				<td>C4</td>
				<td>Machine Learning</td>
				<td>006</td>
				<td>Emily Chen</td>
			</tr>
		</tbody>
	</table>
</main>

<footer>
	<p>&copy; 2023 Faculty Courses</p>
</footer>

    <nav>
		<a href="InstructorMenu.aspx" >GO BACK</a>
    </nav>
</body>
</html>
