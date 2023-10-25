using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace StudentWebApplication
{
	public partial class WebForm7 : System.Web.UI.Page
	{
		String strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
		string email = WebForm6.to;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			if (TextBox2.Text == TextBox3.Text)
			{
				SqlConnection con = new SqlConnection(strcon);
				con.Open();
				SqlCommand cmd = new SqlCommand("forgot_pro", con);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@Email", email);
				cmd.Parameters.AddWithValue("@Password",TextBox2.Text);	
				int rowchg=cmd.ExecuteNonQuery();
				if (rowchg > 0)
				{
					Response.Write("passwordchanged successfully");
				}
			}
        }
    }
}