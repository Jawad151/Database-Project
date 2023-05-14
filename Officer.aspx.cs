using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        SqlConnection conn = new SqlConnection("Data Source=DB-Project\\SQLEXPRESS;Initial Catalog=FLEX_;Integrated Security=True");
        conn.Open();
        //MessageBox.Show("Connection Open");
        SqlCommand cm;
        SqlDataReader rdr;
        String query = "select courseID ,Cname,Credit ,Pre_Req, Instructor,YEAR_  from COURSE ";
 

        {

            cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();


            var allCourses = new List<Course>();

            rdr = cm.ExecuteReader();
            while (rdr.Read())
            {

                string a = rdr[0].ToString();
                string b = rdr[1].ToString();
                int c = Convert.ToInt32(rdr[2].ToString());
                //int c = int.Parse((string)rdr[2]);
                string d = rdr[4].ToString();
                string e = rdr[5].ToString();

                Course aa = new Course { Id = a, Name = b, CreditHours = c, Pre_Req = d, Instructor = e };
                allCourses.Append(aa);
            }




            cm.Dispose();
            conn.Close();


            var filteredCourses = allCourses;

            // Apply filtering based on dropdown selections
            if (!string.IsNullOrEmpty(ddlCreditHour.SelectedValue))
            {
                int C = int.Parse(ddlCreditHour.SelectedValue);
                filteredCourses = filteredCourses.Where(c => c.CreditHours == C).ToList();
            }



            // Bind the filtered courses to the GridView
            gridCourses.DataSource = filteredCourses;
            gridCourses.DataBind();
        }
    }

    protected void CreditHours_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindCourses();
    }



    public class Course
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public int CreditHours { get; set; }

        public string Pre_Req { get; set; }
        public string Instructor { get; set; }
        public DateTime Year { get; set; }

    }


}