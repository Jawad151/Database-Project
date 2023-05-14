using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Officer : System.Web.UI.Page
{
     protected List<Course> allCourses = new List<Course>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCourses();
        }
    }

    private void BindCourses()
    {
        // Sample data

        //var Course = new List<Course>()
        //{
        //    new Course { Id = "1", Name = "Computer Graphics", CreditHours = 2 },
        //    new Course { Id = "2", Name = "Programming Languages", CreditHours = 1 },
        //    new Course { Id = "3", Name = "Natural Language Processing", CreditHours = 3 },
        //    // Add more sample instructors
        //};
        var Course = new List<Course>(){
            new Course { Id = "CSC101", Name = "Introduction to Computer Science", CreditHours = 3, Pre_Req = "", Instructor = "John Doe", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "ENG201", Name = "Advanced English Composition", CreditHours = 3, Pre_Req = "ENG101", Instructor = "Jane Smith", Year = new DateTime(2022, 2, 15) },
            new Course { Id = "MTH110", Name = "Calculus I", CreditHours = 4, Pre_Req = "MTH101", Instructor = "Robert Johnson", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "BIO301", Name = "Genetics", CreditHours = 4, Pre_Req = "BIO201", Instructor = "Sarah Wilson", Year = new DateTime(2022, 3, 1) },
            new Course { Id = "CHEM201", Name = "Organic Chemistry", CreditHours = 4, Pre_Req = "CHEM101", Instructor = "David Lee", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "HIS101", Name = "World History", CreditHours = 3, Pre_Req = "", Instructor = "Karen Brown", Year = new DateTime(2022, 2, 15) },
            new Course { Id = "ART200", Name = "Introduction to Art History", CreditHours = 3, Pre_Req = "", Instructor = "Michael Davis", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "PHIL201", Name = "Ethics", CreditHours = 3, Pre_Req = "PHIL101", Instructor = "Elizabeth Wilson", Year = new DateTime(2022, 3, 1) },
            new Course { Id = "PSYCH101", Name = "Introduction to Psychology", CreditHours = 3, Pre_Req = "", Instructor = "Adam Johnson", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "PHYS201", Name = "Mechanics", CreditHours = 4, Pre_Req = "PHYS101", Instructor = "Emily Kim", Year = new DateTime(2022, 2, 15) },
            new Course { Id = "SOC201", Name = "Sociology", CreditHours = 3, Pre_Req = "", Instructor = "Christopher Brown", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "MUS101", Name = "Introduction to Music", CreditHours = 3, Pre_Req = "", Instructor = "Laura Lee", Year = new DateTime(2022, 3, 1) },
            new Course { Id = "ECON301", Name = "Macroeconomics", CreditHours = 3, Pre_Req = "ECON201", Instructor = "Steven Green", Year = new DateTime(2022, 1, 10) },
            new Course { Id = "STAT200", Name = "Introduction to Statistics", CreditHours = 3, Pre_Req = "MTH101", Instructor = "Matthew Jones", Year = new DateTime(2022, 2, 15) }
        };

        gridCourses.DataSource = Course;
        gridCourses.DataBind();

        
    }


    public class Course
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public int CreditHours { get; set; }

        public string Pre_Req { get; set; }
        public string Instructor { get; set; }
        public DateTime Year { get; set; }
        public int NumOfStudents { get; set; }  
    }


}