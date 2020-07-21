using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from Create_pass ", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                passinfo.DataSource = dt;
                passinfo.DataBind();
            }
        }
    }
}