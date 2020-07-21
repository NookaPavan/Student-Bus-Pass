using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["feedback"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            SqlCommand cmd = new SqlCommand("insert into Feedback values('" + name.Text + "','" + mail.Text + "','" +
                                            msg.InnerText + "')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            name.Text = "";
            mail.Text = "";
            msg.InnerText = "";
           ScriptManager.RegisterClientScriptBlock(this,this.GetType(), "alertMessage","alert('Your Feedback has been Submited')",true);
        }

    }
}