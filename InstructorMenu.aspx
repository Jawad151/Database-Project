<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InstructorMenu.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <title>Faculity Menu</title>
    <style>
      body {
        margin: 0;
        font-family: Arial, sans-serif;
      }
      header {
        background-color: #333;
        color: #fff;
        padding: 10px;
        text-align: center;
      }
      nav {
        background-color: #f2f2f2;
        overflow: hidden;
        text-align: center; /* Center the links horizontally */
      }
      nav a {
        display: block; /* Set links as block elements */
        color: #333;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        font-size: 18px;
        border: 2px solid #ccc; /* Add a border */
        margin: 10px; /* Add some margin around each link */
      }
      nav a:hover {
        background-color: #1c56a8;
        color: #ffff;
      }
  </style>
</head>
 <body>
    <header>
      <h1>Faculity Menu</h1>
    </header>
    <nav>
      <a href="AssignedCources.aspx">View Assigned Courses</a>
      <a href="SetDistribution.aspx">Set Marks Distribution</a>
      <a href="AttendanceReport.aspx">Manage Attendance</a>
      <a href="SetDistribution.aspx">Manage Evaluations</a>
      <a href="GradeReport.aspx"> Grade Report</a>
    </nav>
  </body>
</html>
