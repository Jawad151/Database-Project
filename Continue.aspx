<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Continue.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
	<title>Continue</title>
  
	<style>
        .bgimg
        {
            background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('https://i0.wp.com/phonenumber.pk/wp-content/uploads/2021/05/fast-university-contact-number.jpg?fit=800%2C450&ssl=1');
            height: 620px;
            width: 1335px;
            box-shadow : rgb(255, 255, 255);
            background-size: cover;


        }
       
        .form{
            margin-left: 250px;
            margin-right: 180px;
			padding: 40px;
			width: 45%;
			background-color: white;
			border-radius: 20px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);

		}

        .f1{
            padding: 25px;
			width: 96%;
			background-color: rgb(12, 104, 190);
			
			box-shadow: 0 0 10px rgba(161, 161, 161, 0.5);
        
            color: rgb(253, 253, 253);
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-weight: 400;
            font-stretch: extra-expanded;
            font: bolder;
            font-size: larger;
            font-stretch: ultra-expanded;
		}
        .b1 .b2 .b3 {
            transition-duration: 0.4s;
            padding: 5px; 
            width: 5%;
            margin-left: 220px;
            margin-right: 170px;
            }

        .b1:hover {
             background-color: #4CAF50; /* Green */
             color: white;
             
        }
        .b2:hover {
             background-color: #0fb7d4; 
             color: white;

        }      
        .b3:hover {
             background-color: #d48f0f; 
             color: white;

        }
        .h2
        {
            color: white;
           margin-left : 50px;
           font-size : 100px;
        }
        .h1
        {
            background: #0fb7d4;
          

        }
    .h3{
        margin-left: 250px;
        
    }
	    .b3 {}
        .b2 {}
        .b1 {}
	</style>
</head>

<body>
    <div class="bgimg" >  
        <div class="text">
            <form class="f1" >
            <h2> National University of Computer and Emerging Sciences,NUCES FAST</h2>
            </form>
        </div> 
        <br/><br/>
        <br/>

        <div class="form">
            <form runat="server">
                <h1>Continue As : </h1>	
                <div class = "b1">
                <asp:Button ID="Button2" runat="server" Text="Student" OnClick="Button2_Click" BackColor="Black" BorderColor="White" BorderStyle="Outset" BorderWidth="5px" CssClass="b1" Font-Bold="True" Font-Names="Arial Black" Font-Overline="False" Font-Size="Large" ForeColor="White" Height="66px" Width="600px" />
                    <br />
                    <br/>
                  
                </div>
                <div class = "b2">
                <asp:Button ID="Button1" runat="server" Text="Instructor" OnClick="Button1_Click" BackColor="Black" BorderColor="White" BorderStyle="Outset" BorderWidth="5px" CssClass="b2" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="White" Height="66px" Width="599px" />
                    <br />
                    <br/>
                
                </div>
                <div class = "b3">
                    <asp:Button ID="Button3" runat="server" Text="Officer" OnClick="Button3_Click" BackColor="#000000" BorderColor="White" BorderStyle="Outset" BorderWidth="5px" CssClass="b3" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="White" Height="71px" Width="599px" />
                    <br />
                    <br/>
                
                  </div>
              </form>      
        </div>
      </div>

 

      

</body>
</html>
