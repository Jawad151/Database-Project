<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Student_</title>
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
	<form>
		<div class="header">
		<h1>Teachers Assessment Form</h1>
		</div>

		<label for="date">Date:</label>
		<input type="date" id="date" name="date"/><br/><br/>
		
		<label for="fname">First Name:</label>
		<input type="text" id="fname" name="fname"/><br/><br/>
		
		<label for="lname">Last Name:</label>
		<input type="text" id="lname" name="lname" /><br/><br/>
		
		<label for="subject">Subject:</label>
		<input type="text" id="subject" name="subject" /><br/><br/>
		
		<label for="schedule">Schedule:</label>
		<input type="text" id="schedule" name="schedule" /><br/><br/>
		
		<label for="room">Room Number:</label>
		<input type="text" id="room" name="room" /><br/><br/>
		
		<label for="year">School Year:</label>
		<input type="text" id="year" name="year" /><br/><br/>
		
		<p>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</p>
		<p>For reference, the metrics are as follows:</p>
		<ul>
		  <li>1 - Poor</li>
		  <li>2 - Below Average</li>
		  <li>3 - Average</li>
		  <li>4 - Good</li>
		  <li>5 - Excellent</li>
		</ul>

		<h3>Appearance and Personal Presentation</h3>
		<label for="q1">Teacher attends class in a well presentable manner:</label>
		<input type="radio"  name="appearance" value="1" /> 1
		<input type="radio"  name="appearance" value="2" /> 2
		<input type="radio"  name="appearance" value="3" /> 3
		<input type="radio"  name="appearance" value="4" /> 4
		<input type="radio"  name="appearance" value="5" /> 5<br/><br/>

		<label for="q2">Teacher shows enthusiasm when teaching in class:</label>
		<input type="radio"  name="enthusiasm" value="1" /> 1
		<input type="radio"  name="enthusiasm" value="2" /> 2
		<input type="radio"  name="enthusiasm" value="3"/> 3
		<input type="radio"  name="enthusiasm" value="4"/> 4
		<input type="radio"  name="enthusiasm" value="5"/> 5<br/><br/>

		<label for="q3">Teacher shows initiative and flexibility in teaching:</label>
		<input type="radio"  name="initiative" value="1" /> 1
		<input type="radio"  name="initiative" value="2" /> 2
		<input type="radio"  name="initiative" value="3" /> 3
		<input type="radio"  name="initiative" value="4" /> 4
		<input type="radio"  name="initiative" value="5"/> 5<br/><br/>

		<label for="q4">Teacher is well articulated and shows full knowledge of the subject in teaching:</label>
		<input type="radio"  name="articulated" value="1" /> 1
		<input type="radio"  name="articulated" value="2" /> 2
		<input type="radio"  name="articulated" value="3"  /> 3
		<input type="radio"  name="articulated" value="4" /> 4
		<input type="radio"  name="articulated" value="5" /> 5<br/><br/>

		<label for="q5">Teacher speaks loud and clear enough to be heard by the whole class:</label>
		<input type="radio"  name="loud" value="1" /> 1
		<input type="radio"  name="loud" value="2" /> 2
		<input type="radio"  name="loud" value="3" /> 3
		<input type="radio"  name="loud" value="4" /> 4
		<input type="radio"  name="loud" value="5" /> 5<br/><br/>
		
		<h4>Professional Practices</h4>
		
		<label for="q1">Teacher shows professionalism in class:</label>
		<input type="radio"  name="professionalism" value="1" /> 1
		<input type="radio"  name="professionalism" value="2" /> 2
		<input type="radio"  name="professionalism" value="3" /> 3
		<input type="radio"  name="professionalism" value="4" /> 4
		<input type="radio"  name="professionalism" value="5" /> 5<br/><br/>

		<label for="q2">Teacher shows commitment to teaching the class:</label>
		<input type="radio"  name="commitment" value="1" /> 1
		<input type="radio"  name="commitment" value="2"/> 2
		<input type="radio"  name="commitment" value="3"/> 3
		<input type="radio"  name="commitment" value="4"/> 4
		<input type="radio"  name="commitment" value="5" /> 5<br/><br/>

		<label for="q3">Teacher encourages students to engage in class discussions and ask questions:</label>
		<input type="radio"  name="encourages" value="1"/> 1
		<input type="radio"  name="encourages" value="2"/> 2
		<input type="radio"  name="encourages" value="3"/> 3
		<input type="radio"  name="encourages" value="4"/> 4
		<input type="radio"  name="encourages" value="5"/> 5<br/><br/>

		<label for="q4">Teacher handles criticisms and suggestions professionally:</label>
		<input type="radio"  name="criticisms" value="1"/> 1
		<input type="radio"  name="criticisms" value="2"/> 2
		<input type="radio"  name="criticisms" value="3"/> 3
		<input type="radio"  name="criticisms" value="4"/> 4
		<input type="radio"  name="criticisms" value="5"/> 5<br/><br/>

		<label for="q5">Teacher comes to class on time:</label>
		<input type="radio"  name="ontime" value="1"/> 1
		<input type="radio"  name="ontime" value="2"/> 2
		<input type="radio"  name="ontime" value="3"/> 3
		<input type="radio"  name="ontime" value="4"/> 4
		<input type="radio"  name="ontime" value="5"/> 5<br/><br/>

		<label for="q6">Teacher ends class on time:</label>
		<input type="radio"  name="offtime" value="1"/> 1
		<input type="radio"  name="offtime" value="2"/> 2
		<input type="radio"  name="offtime" value="3"/> 3
		<input type="radio"  name="offtime" value="4"/> 4
		<input type="radio"  name="offtime" value="5"/> 5<br/><br/>

		<h4>Teaching Methods</h4>

		<label for="q1">Teacher shows well rounded knowledge over the subject matter:</label>
		<input type="radio"  name="knowledge" value="1"/> 1
		<input type="radio"  name="knowledge" value="2"/> 2
		<input type="radio"  name="knowledge" value="3"/> 3
		<input type="radio"  name="knowledge" value="4"/> 4
		<input type="radio"  name="knowledge" value="5"/> 5<br/><br/>

		<label for="q2">Teacher has organized the lesson conducive for easy understanding of students:</label>
		<input type="radio"  name="organization" value="1"/> 1
		<input type="radio"  name="organization" value="2"/> 2
		<input type="radio"  name="organization" value="3"/> 3
		<input type="radio"  name="organization" value="4"/> 4
		<input type="radio"  name="organization" value="5"/> 5<br/><br/>

		<label for="q3">Teacher shows dynamism and enthusiasm:</label>
		<input type="radio"  name="dynamism" value="1"/> 1
		<input type="radio"  name="dynamism" value="2"/> 2
		<input type="radio"  name="dynamism" value="3"/> 3
		<input type="radio"  name="dynamism" value="4"/> 4
		<input type="radio"  name="dynamism" value="5"/> 5<br/><br/>

		<label for="q4">Teacher stimulates the critical thinking of students:</label>
		<input type="radio"  name="stimulates" value="1"/> 1
		<input type="radio"  name="stimulates" value="2"/> 2
		<input type="radio"  name="stimulates" value="3"/> 3
		<input type="radio"  name="stimulates" value="4"/> 4
		<input type="radio"  name="stimulates" value="5"/> 5<br/><br/>

		<label for="q5">Teacher handles the class environment conducive for learning:</label>
		<input type="radio"  name="environment" value="1"/> 1
		<input type="radio"  name="environment" value="2"/> 2
		<input type="radio"  name="environment" value="3"/> 3
		<input type="radio"  name="environment" value="4"/> 4
		<input type="radio"  name="environment" value="5"/> 5<br/><br/>

		<h4>Disposition Towards Students</h4>

		<label for="q1">Teacher believes that students can learn from the class:</label>
		<input type="radio"  name="belief" value="1"/> 1
		<input type="radio"  name="belief" value="2"/> 2
		<input type="radio"  name="belief" value="3"/> 3
		<input type="radio"  name="belief" value="4"/> 4
		<input type="radio"  name="belief" value="5"/> 5<br/><br/>

		<label for="q2">Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race:</label>
		<input type="radio"  name="respect" value="1"/> 1
		<input type="radio"  name="respect" value="2"/> 2
		<input type="radio"  name="respect" value="3"/> 3
		<input type="radio"  name="respect" value="4"/> 4
		<input type="radio"  name="respect" value="5"/> 5<br/><br/>

		<label for="q3">Teacher finds the students' strengths as a basis for growth and weaknesses as opportunities for improvement:</label>
		<input type="radio"  name="strengths" value="1"/> 1
		<input type="radio"  name="strengths" value="2"/> 2
		<input type="radio"  name="strengths" value="3"/> 3
		<input type="radio"  name="strengths" value="4"/> 4
		<input type="radio"  name="strengths" value="5"/> 5<br/><br/>

		<label for="q4">Teacher understands the weakness of a student and helps in the student's improvement:</label>
		<input type="radio"  name="weakness" value="1"/> 1
		<input type="radio"  name="weakness" value="2"/> 2
		<input type="radio"  name="weakness" value="3"/> 3
		<input type="radio"  name="weakness" value="4"/> 4
		<input type="radio"  name="weakness" value="5"/> 5<br/><br/>

		<label for="comments">Comments:</label><br/>
		<textarea id="comments" name="comments" rows="4" cols="50"></textarea><br/><br/>

		<input type="submit" value="Submit" onclick="Submission"/>
	</form>
</body>
</html>
