using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApplication
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		String strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

		protected void Page_Load(object sender, EventArgs e)
		{
			

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(strcon);
			try
			{
                
				con.Open();
				SqlCommand cmd = new SqlCommand("Login_procedure", con);
				cmd.CommandType = CommandType.StoredProcedure;

				String email=TextBox1.Text.Trim();
				String password=TextBox2.Text.Trim();

				cmd.Parameters.AddWithValue("@Email", email);
				cmd.Parameters.AddWithValue("@Password", password);
				
				int checklog= cmd.ExecuteNonQuery();
				if (checklog==1)
				{
					Response.Write("<script>alert('Login Successfull');</script>");
					Session["Username"] = TextBox1;
					Session["role"] = "user";
					Response.Redirect("Pagination.aspx");
				}
                else if (checklog==-1)
                {
					Response.Write("<script>alert('Login UnSuccessfull');</script>");
				}
				con.Close();

            }
			catch (Exception ex)
			{
				Response.Write("<script>alert('" + ex.Message + "');</script>");
				if (con!= null && con.State == ConnectionState.Closed)
				{
					con.Close() ;
				}
			}
			finally 
			{
				if (con != null && con.State == ConnectionState.Closed)
				{
					con.Close();
				}
			}
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Response.Redirect("Forget password.aspx");
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			string clientid = "781382240110-a9eh9gtmjtvkme4h96a0gcfauogb8rae.apps.googleusercontent.com";
			string clientsecret = "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";
			string redirection_url = "https://localhost:44385/default.aspx";
			string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
			Response.Redirect(url);

		}
	}
}