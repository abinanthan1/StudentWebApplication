using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApplication
{
	public partial class WebForm3 : System.Web.UI.Page
	{
		String strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				con.Open();
				SqlCommand cmd = new SqlCommand("RegisterUser", con);
				cmd.CommandType = CommandType.StoredProcedure;

				String username=TextBox1.Text.Trim();
				String Password=Textpassword.Text.Trim();
				String email = TextBox4.Text.Trim();
				String gender = RadioButtonList1.SelectedValue;
				String city =DropDownList1.SelectedValue;

				cmd.Parameters.AddWithValue("@Name", username);
				cmd.Parameters.AddWithValue("@Password", Password);
				cmd.Parameters.AddWithValue("@Email", email);
				cmd.Parameters.AddWithValue("@Gender", gender);
				cmd.Parameters.AddWithValue("@City", city);

				int rowcount=cmd.ExecuteNonQuery();
				if(rowcount == 1)
				{
					Response.Write("<script> alert('Registration Successful');</script>");
					ClearFormFields();
					Response.Redirect("Login.aspx");
				}
				else if(rowcount == -1)
				{
					Response.Write("<script> alert('Email already existed');</script>");
				}
				else
				{
					Response.Write("<script> alert('Registration Failed');</script>");
				}


			}
			catch (Exception x) 
			{
				Response.Write("<script>alert('" + x.Message + "');</script>");
			}
		}
		void ClearFormFields()
		{
			TextBox1.Text = "";
			Textpassword.Text = "";
			TextConform.Text = "";
			TextBox4.Text = "";
			RadioButtonList1.SelectedIndex = -1;
			DropDownList1.SelectedIndex = -1;
		}

	}
}