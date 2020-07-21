using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

namespace WebApplication12
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //if (loginid.Text != null && loginpassword.Value != null && loginid.Text == " " && loginpassword.Value == " ") ;
            //{
            //    string cs = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;
            //    SqlConnection con = new SqlConnection(cs);

            //    SqlCommand cmd =
            //        new SqlCommand(
            //            "insert into LoginCredentials values('" + loginid.Text + "','" + loginpassword.Value + "')", con);
            //    con.Open();
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    loginid.Text = "";
            //    loginpassword.Value = "";
            //    Response.Redirect("~/student.aspx");
            //}
            if (user.SelectedItem.Value == "Login")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Select the Login Type!!')", true);

            }
            else
            {
                if (user.SelectedItem.Value == "Admin Login")
                {
                    if (loginid.Text=="admin" && loginpwd.Text=="admin123")
                    {
                        Response.Redirect("~/Admin.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('INVALID userid or password!!')", true);

                    }
                }

                if (user.SelectedItem.Value == "Institute Login")
                {
                    if (loginid.Text == "institute" && loginpwd.Text == "institute123")
                    {
                        Response.Redirect("~/institute.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('INVALID userid or password!!')", true);

                    }

                }

                if (user.SelectedItem.Value == "Student Login")
                {
                    if (AuthenticateUser(loginid.Text, loginpwd.Text))
                    {
                        Response.Redirect("~/student.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                            "alert(' INVALID userid or password')", true);
                    }

                }

            }



        }
        private bool AuthenticateUser(string username, string password)
        {
            // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                // FormsAuthentication is in System.Web.Security
                //string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                // SqlParameter is in System.Data namespace
                SqlParameter paramUsername = new SqlParameter("@UserName", username);
                SqlParameter paramPassword = new SqlParameter("@Password", password);

                cmd.Parameters.Add(paramUsername);
                cmd.Parameters.Add(paramPassword);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;
            }
        }

    }
}