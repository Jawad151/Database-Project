using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection("Data Source=DB-Project\\SQLEXPRESS;Initial Catalog=FLEX_;Integrated Security=True");
        conn.Open();
        //MessageBox.Show("Connection Open");
        SqlCommand cm;
        SqlDataReader rdr;

        string user = Request.Form["username"];
        string password = Request.Form["password"];
        string type = DropDownList1.SelectedValue;
        string query;
        if (type == "STUDENT")
        {
            query = "SELECT username, _password from student  where username = '" + user + "';";
        }
        else if (type == "ADMINISTRATOR")
        {
            query = "SELECT username, _password from ADMIN_  where username = '" + user + "';";
        }
        else
        {
            query = "SELECT Inst_username, Inst_pass from Faculty  where Inst_username = '" + user + "';";
        }


        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();

        rdr = cm.ExecuteReader();


        if (rdr.Read())
        {
            string a = rdr[0].ToString();
            string b = rdr[1].ToString();
            Console.WriteLine(a);
            Console.WriteLine(b);
            if (b == password)
            {
                Response.Write("<script>Welcome</script>");
                if (type == "STUDENT")
                {
                    Response.Redirect("/StudentMenu.aspx?uname=" + a);
                   
                }
                else if (type == "INSTRUCTOR")
                {
                    Response.Redirect("/InstructorMenu.aspx?uname" + a);
                }

                else if (type == "ADMINISTRATOR")
                {
                    Response.Write("<script>alert('Correct Password')</script>");
                    Response.Redirect("/Officer.aspx?uname=" + a);
                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect Password')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('User Does not Exist')</script>");
        }



        cm.Dispose();
        conn.Close();

    }
}  