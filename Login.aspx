<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Continue As</title>
 <style>
	.color {
			height: 82vh;
			width: 28%;
			background-color: rgb(0, 0, 0);
			
			float: left;
			padding: 50px;


			}

			.text{
			height: 100px;
			margin-top: 75px ;
			margin-right: 10px;
			width: 79%;
			padding: 15px;
			color:white;
			font-size: 60px;
			text-align: center;
			font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
			font-weight: 200;
			padding: 50px;

			}
		form {
			margin: 95px ;
			padding: 62px;
			width: 72%;
			background-color: rgb(255, 255, 255);
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		}

		input[type="text"], input[type="password"] {
			display: block;
			margin: 11px 0;
			padding: 7.5px;
			width: 100%;
			border-radius: 3px;
			border: 1px solid #ccc;
			font-size: 16px;
		}

		input[type="submit"] {
			display: block;
			margin: 20px auto 0;
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 3px;
			font-size: 16px;
			cursor: pointer;
		}
		.container
		{
			display: flex;
			height: auto;
		}
		.box
		{
			background-color: #ccc;
		}
	</style>
</head>
<body>
	<div class="box",bgcolor ="silver">	
	<div class="container">
			<div class ="color" > 
				<div class="text">Welcome to Flex Portal</div>
			</div>
			<div class="form">
		 
			<form runat="server">
				<h1>Login to Account</h1>	
				<asp:label for="username" runat="server">Username:</asp:label>
				<input type="text" id="username" name="username" />
				<asp:label for="password" runat="server">Password:</asp:label>
				<input type="password" id="password" name="password" />
				<asp:DropDownList ID="DropDownList1" runat="server" style="left: 50px; width: 218px; height: 22px; margin-left: 170px; margin-top: 0px;">
                    <asp:ListItem Value="STUDENT">Student</asp:ListItem>
                    <asp:ListItem Value="ADMINISTRATOR">Admin</asp:ListItem>
                    <asp:ListItem Value="INSTRUCTOR">Instructor</asp:ListItem>
                    
                </asp:DropDownList>
				<asp:Button runat="server" Text="Login" onClick="Button1_Click"/>
			</form>
				
		</div>
</div>
		</div>
</body>
</html>