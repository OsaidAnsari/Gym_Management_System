using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GymWebsite
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = TextBox1.Text.Trim();
            string password = TextBox2.Text;



            using (SqlConnection connection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\16-03-2022\Documents\Visual Studio 2015\Projects\GymWebsite\GymWebsite\App_Data\Database1.mdf'; Integrated Security = True"))
            {
                connection.Open();

                string query = "SELECT role FROM [User] WHERE username = @username AND password = @password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);

                object role = command.ExecuteScalar();

                if (role != null)
                {
                    string roleStr = role.ToString();
                    Session["Username"] = username;
                    Session["Role"] = roleStr;
                    Label1.Text = "Login successful!";
                    if (roleStr == "admin")
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else if (roleStr == "user")
                    {
                        Response.Redirect("index.html");
                    }

                }
                else
                {
                    Label1.Text = "Invalid username or password.";
                }
            }
        }
    }
}