using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWebsite
{
    public partial class subscriptionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            using(var db = new DataClasses1DataContext())
            {
                subscription sub = new subscription()
                {
                    name=TextBox1.Text,
                    phone_no=TextBox2.Text,
                    age=TextBox3.Text,
                    gender=TextBox4.Text,
                };
                db.subscriptions.InsertOnSubmit(sub);
                db.SubmitChanges();
                Label5.Text = "Subscription Information Added..";
            }

        }
    }
}