using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class officerCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindInstructors();
        }
    }

    private void BindInstructors()
    {
        // Sample data
        var instructors = new List<Instructor>()
    {
        new Instructor { Id = 1, Name = "Instructor 1", NumOfCoursesAssigned = 2 },
        new Instructor { Id = 2, Name = "Instructor 2", NumOfCoursesAssigned = 1 },
        new Instructor { Id = 3, Name = "Instructor 3", NumOfCoursesAssigned = 3 },
        // Add more sample instructors
    };

        gridInstructors.DataSource = instructors;
        gridInstructors.DataBind();

        // Generate course options for each instructor's dropdown
        foreach (GridViewRow row in gridInstructors.Rows)
        {
            var instructorId = ((Label)row.FindControl("lblId")).Text;
            var ddlCourse1 = (DropDownList)row.FindControl("ddlCourse1");
            var ddlCourse2 = (DropDownList)row.FindControl("ddlCourse2");
            var ddlCourse3 = (DropDownList)row.FindControl("ddlCourse3");

            // Generate course options dynamically based on available courses not yet assigned to the instructor
            var availableCourses = GetAvailableCourses(instructorId);
            ddlCourse1.DataSource = availableCourses;
            ddlCourse1.DataBind();
            ddlCourse1.Items.Insert(0, new ListItem("Select Course", ""));

            ddlCourse2.DataSource = availableCourses;
            ddlCourse2.DataBind();
            ddlCourse2.Items.Insert(0, new ListItem("Select Course", ""));

            ddlCourse3.DataSource = availableCourses;
            ddlCourse3.DataBind();
            ddlCourse3.Items.Insert(0, new ListItem("Select Course", ""));
        }
    }

    protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
    {
        var dropdown = (DropDownList)sender;
        var selectedCourse = dropdown.SelectedValue;
        var instructorId = ((Label)dropdown.Parent.Parent.FindControl("lblId")).Text;

        // Perform course assignment logic here based on the selected course and instructor ID

        // After assigning the course, rebind the instructors grid
        BindInstructors();
    }

    private List<string> GetAvailableCourses(string instructorId)
    {
        // Sample method to retrieve available courses based on the instructor ID
        // Replace with your own logic to fetch available courses

        // Assuming a list of course names as sample available courses
        var availableCourses = new List<string>()
    {
        "Course 1",
        "Course 2",
        "Course 3",
        "Course 4",
        // Add more sample courses
    };

        return availableCourses;
    }

    public class Instructor
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int NumOfCoursesAssigned { get; set; }
    }

}