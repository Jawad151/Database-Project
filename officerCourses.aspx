<%@ Page Language="C#" AutoEventWireup="true" CodeFile="officerCourses.aspx.cs" Inherits="officerCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Allocation</title>
    <link rel="stylesheet" type="text/css" href="officerCoursesStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-navigation">
            <div class="brand-name">
                <asp:Label ID="lblBrandName" runat="server" Text="Flex - Academic Office"></asp:Label>
            </div>
            <div class="navigation-links">
                <ul>
                    <li><a href="Officer.aspx">Courses</a></li>
                    <li><a href="#">Instructors</a></li>
                    <li><a href="#">Students</a></li>
                </ul>
            </div>
            <div class="user-profile">
                <asp:Image ID="imgUserProfile" runat="server" ImageUrl="~/profilephto.jpg" AlternateText="User Profile" />
                <asp:Label ID="lblUserName" runat="server" Text="John Doe"></asp:Label>
            </div>
        </div>

        <div>
            <asp:GridView ID="gridInstructors" runat="server" CssClass="instructor-table fade-in" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="NumOfCoursesAssigned" HeaderText="Number of Courses Assigned" />
                    <asp:TemplateField HeaderText="Course 1">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlCourse1" runat="server" CssClass="dropdown" AutoPostBack="True" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                                <asp:ListItem Text="Select Course" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course 2">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlCourse2" runat="server" CssClass="dropdown" AutoPostBack="True" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                                <asp:ListItem Text="Select Course" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course 3">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddlCourse3" runat="server" CssClass="dropdown" AutoPostBack="True" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                                <asp:ListItem Text="Select Course" Value=""></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

    </form>
</body>
</html>
