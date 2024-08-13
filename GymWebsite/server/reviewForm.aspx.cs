using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymWebsite
{
    public partial class reviewForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void subbtn_Click(object sender, EventArgs e)
        {
            using (var db = new DataClasses1DataContext())
            {
                review rev = new review()
                {
                    rEmail = TextBox1.Text,
                    Review1 = TextBox2.Text,
                };
                db.reviews.InsertOnSubmit(rev);
                db.SubmitChanges();
                Label3.Text = "Review Added..";
            }
        }
    }
}