using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (D1.SelectedIndex==2)
            //{
            //    crd.Enabled = false;
            //    cvv.Enabled = false;
            //}

            //if (D2.SelectedIndex==2)
            //{
            //    card.Enabled = false;
            //    cvv1.Enabled = false;
            //}
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            if (uid.Text!="" && uid.Text!=null && passid.Text != "" && passid.Text != null && from.Text != "" && from.Text != null && to.Text != "" && to.Text != null && distance.Text != "" && distance.Text != null && amount.Text != "" && amount.Text != null)
            {
                string rand = Guid.NewGuid().ToString("N").Substring(0, 12);
                string success = "Your pass has been Created and UNIQUE ID is " + rand;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd =
                        new SqlCommand(
                            "insert into Create_pass values('" + uid.Text + "','" + passid.Text + "','" + from.Text +
                            "','" + to.Text + "','" + distance.Text + "','" + amount.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert1", "alert('" + success + "')",
                        true);

                }
            }
            else
            {
                Response.Write("<script>alert('Enter the Required details!!')</script>");
            }
        }

        protected void Unnamed3_Click1(object sender, EventArgs e)
        {
            
            bool renew=false;
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("select * from Create_pass where userid='" + uid1.Text + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    renew = true;

                }
                catch (Exception exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Problem occured during the renew process!!')", true);
                    

                }


            }

            if (renew)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You pass has been Renewed!!')", true);
                renew = false;
            }
        }
    }
}