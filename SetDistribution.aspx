<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetDistribution.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}

		.container {
			margin: 0 auto;
			max-width: 50%;
			padding: 20px;
			background-color: #fff;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		h1 {
			text-align: center;
			margin-bottom: 20px;
		}

		form {
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
		}

		.form-group {
			flex-basis: calc(50% - 10px);
			margin-bottom: 20px;
		}

		label {
			display: block;
			margin-bottom: 5px;
			font-weight: bold;
		}

		input[type="number"] {
			width: 200px;
			padding: 5px;
			border: 1px solid #ccc;
			border-radius: 5px;
			box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
			font-size: 16px;
			line-height: 1.5;
			background-color: #fff;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			 }

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Set Distribution</h1>
		<form>
			<div class="form-group">
				<label for="assignments">Assignments:</label>
				<input type="number" id="assignments" name="assignments" min="0" max="100" />
			</div>
			<div class="form-group">
				<label for="quizzes">Quizzes:</label>
				<input type="number" id="quizzes" name="quizzes" min="0" max="100" />
			</div>
			<div class="form-group">
				<label for="sessional">Sessional:</label>
				<input type="number" id="sessional" name="sessional" min="0" max="100" />
			</div>
			<div class="form-group">
				<label for="finals">Finals:</label>
				<input type="number" id="finals" name="finals" min="0" max="100" />
			</div>
			<input type="submit" value="Set Distribution" />
		</form>
		<p>Course Code: <strong>CSE101</strong></p>
		<p>Course Name: <strong>Introduction to Computer Science</strong></p>
		<p>Section: <strong>Section A</strong></p>
	</div>

</body>
</html>
