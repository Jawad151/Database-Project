<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContinueAs.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Continue As</title>
  <style>
 
      .f1{
            width: 97%;
			background-color: black;
			padding : 19px;
			box-shadow: 0 0 10px rgba(161, 161, 161, 0.8);
            color: rgb(253, 253, 253);
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            font-stretch: extra-expanded;
            font: bolder;
            font-size: larger;
            font-stretch: ultra-expanded;
		}
      .c1
      {
          background-color : seagreen;
           width : 100%;
          height: 525px;

      }
      .h2
        {
           color: white;
           margin-left : 50px;
           font-size : 100px;
        }
      	form {
            margin-left : 300px;
            padding: 45px;
			width: 30%;
			background-color: white;
			border-radius: 5px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 1.1);
		}

		input[type="text"], input[type="password"] {
			display: block;
			margin: 11px 0;
			padding: 7.5px;
			width: 62%;
			border-radius: 3px;
			border: 1px solid #ccc;
			font-size: 16px;
		}

  	     Button1 {
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
         
      </style>
</head>
<body>

           
            <div class="f1" >
            <h2> National University of Computer and Emerging Sciences,NUCES FAST</h2>
            </div>
   
    <div class="c1">
         <br/>
    <br/>

         <br/>
    <br/>

       <div class="form">
		 
			<form runat="server">

				<h1>Login to Account</h1>	
				<asp:label for="username" runat="server">Username: </asp:label>
				<input type="text" id="username" name="username"  />
				<asp:label for="password" runat="server">Password:</asp:label>
				<input type="password" id="password" name="password" />
               
                <br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" BorderStyle="Double" Height="45px" OnClientClick="&quot;Default.aspx&quot;" Width="110px"  />
                
			</form>
     </div>
    
</div>
    




</body>
</html>
