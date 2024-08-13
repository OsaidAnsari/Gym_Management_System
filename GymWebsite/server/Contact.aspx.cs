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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var db = new DataClasses1DataContext())
            {
                contact cont = new contact()
                {
                    cname = TextBox1.Text,
                    cemail = TextBox2.Text,
                    message = TextBox3.Text,

                };
                db.contacts.InsertOnSubmit(cont);
                db.SubmitChanges();
                Label4.Text = "Message Sent..";
            }
        }
    }

  }
