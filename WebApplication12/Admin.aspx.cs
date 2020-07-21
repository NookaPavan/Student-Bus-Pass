using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication12
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["logincredentials"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            _userDetail();
        }

        private void _userDetail()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("select * from Registration ",con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                details.DataSource = dt;
                details.DataBind();
            }
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void OnClick(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void details_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}