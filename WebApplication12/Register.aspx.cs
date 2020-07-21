using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

namespace WebApplication12
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void Button1_Click1(object sender, EventArgs e)

        {
            if (registername.Text!="" && registername.Text!=null && registerdate.Text != "" && registerdate.Text != null && registerage.Text != "" && registerage.Text != null && registreaddress.Text != "" && registreaddress.Text != null && email.Text != "" && email.Text != null && no.Text != "" && no.Text != null )
            {

                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser1", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter username = new SqlParameter("@UserName", registerid.Text);
                    // FormsAuthentication calss is in System.Web.Security namespace
                    SqlParameter password = new SqlParameter("@Password", registerpwd.Text);

                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);

                    con.Open();
                    int ReturnCode = (int) cmd.ExecuteScalar();
                    if (ReturnCode == -1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                            "alert('User Id already in use, please choose another user name')", true);


                    }
                    else
                    {
                        _registerUser();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                            "alert('You have been Registered')", true);


                        Response.Redirect("~/Login.aspx");
                    }
                }


            }
            else
            {
                Response.Write("<script>alert('Enter all the required details!!')</script>");
            }

        }

        public void _registerUser()
        {
            try
            {
                using (SqlConnection con1 = new SqlConnection(cs))
                {
                    SqlCommand cmd1 = new SqlCommand("insert into Registration values('" + registername.Text + "','" + registerdate.Text + "','" + currentsem.SelectedItem.Text + "','" + registerage.Text + "','" + gender.SelectedItem.Text + "','" + registreaddress.Text + "','" + email.Text + "','" + no.Text + "')", con1);
                    con1.Open();
                    cmd1.ExecuteNonQuery();


                }
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('Enter all the required details!!')</script>");

            }

        }
    }
}