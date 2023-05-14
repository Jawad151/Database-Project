<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Officer.aspx.cs" Inherits="Officer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex Academic Office</title>
    <link rel="stylesheet" type="text/css" href="officerStyles.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="top-navigation">
            <div class="brand-name">
                <asp:Label ID="lblBrandName" runat="server" Text="Flex - Academic Office"></asp:Label>
            </div>
            <div class="navigation-links">
                <ul>
                    <li><a href="#">Courses</a></li>
                    <li><a href="/officerCourses.aspx">Instructors</a></li>
                    <li><a href="#">Students</a></li>
                </ul>
            </div>
            <div class="user-profile">
                <asp:Image ID="imgUserProfile" runat="server" ImageUrl="~/profilephto.jpg" AlternateText="User Profile" />
                <asp:Label ID="lblUserName" runat="server" Text="John Doe"></asp:Label>
            </div>
        </div>
        <div class="course-container">
           
           <div class="filters">
         

                <asp:DropDownList ID="ddlCreditHour" runat="server" CssClass="dropdown" AutoPostBack="True">
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                </asp:DropDownList>




            </div>
            <!-- Grid in asp for Courses and their Datafields -->
            <asp:GridView ID="gridCourses" runat="server" CssClass="course-table" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="NumOfStudents" HeaderText="Number of Students" />
                    <asp:BoundField DataField="Instructor" HeaderText="Instructor" />
                    <asp:BoundField DataField="CreditHours" HeaderText="CreditHours" />
                    <asp:BoundField DataField="Year" HeaderText="Date Time" />
                    <asp:BoundField DataField="Pre_Req" HeaderText="Pre_Req" />
                </Columns>
            </asp:GridView>
        </div>

    </form>
</body>
</html>
