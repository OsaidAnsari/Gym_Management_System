using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWebsite
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (var db = new DataClasses1DataContext())
                {
                    User users = new User()
                    {
                        username = TextBox1.Text,
                        password = TextBox2.Text,
                        role = "user"
                    };
                    if (TextBox2.Text == TextBox3.Text)
                    {
                        db.Users.InsertOnSubmit(users);
                        db.SubmitChanges();
                        Label1.Text = "Sign Up Successful";
                        Response.Redirect("login.aspx");

                    }
                    else
                    {
                        Label1.Text = "Password does not match";
                    }
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}