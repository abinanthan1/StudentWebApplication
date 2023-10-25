using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApplication
{
	public partial class WebForm4 : System.Web.UI.Page
	{
		String strcon = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				BindGridview();
				
			}
		}
		private void BindGridview()
		{ 
			SqlConnection con = new SqlConnection(strcon);
			con.Open();
			SqlCommand cmd = new SqlCommand("Client_pro", con);
			SqlDataAdapter adapter = new SqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			adapter.Fill(dt);
			GridView1.DataSource = dt;
			GridView1.DataBind();

			ViewState["dirstate"] = dt;
			ViewState["sortdr"] = "Asc";
		}
		

		protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
		{
			GridView1.EditIndex = -1;
			BindGridview();
		}

		protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
		{
			DataTable dt = (DataTable)ViewState["dirstate"];

			if (dt != null)
			{
				string sortDirection = ViewState["sortdr"].ToString();

				if (sortDirection == "Desc")
				{
					dt.DefaultView.Sort = e.SortExpression + " ASC";
					ViewState["sortdr"] = "Asc";

				}
				else
				{
					dt.DefaultView.Sort = e.SortExpression + " DESC";
					ViewState["sortdr"] = "Desc";
				}


				GridView1.DataSource = dt;
				GridView1.DataBind();
			}

		}

		protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{
			try
			{
				int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

				String name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
				String city = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
				String number = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
				String email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

				SqlConnection connection = new SqlConnection(strcon);
				connection.Open();
				SqlCommand cmd = new SqlCommand("UpdateClient", connection);
				cmd.CommandType = CommandType.StoredProcedure;
				cmd.Parameters.AddWithValue("@ClientID", id);
				cmd.Parameters.AddWithValue("@ClientName", name);
				cmd.Parameters.AddWithValue("@ClientCity", city);
				cmd.Parameters.AddWithValue("@ClientNumber", number);
				cmd.Parameters.AddWithValue("@ClientEmail", email);
				int rowct = cmd.ExecuteNonQuery();
				if (rowct == 1)
				{
					Response.Write("<script> alert('Update Successful');</script>");
					GridView1.EditIndex = -1;
					BindGridview();

				}
				else
				{
					Response.Write("<script> alert('Update UnSuccessful');</script>");
				}
			}
			catch(Exception a)
			{
				Response.Write("<script>alert('" + a.Message + "');</script>");
			}
		}

		protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
		{
			GridView1.EditIndex=e.NewEditIndex;
			BindGridview();

		}

		protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

			SqlConnection conn = new SqlConnection(strcon);
			conn.Open();
			SqlCommand cmd = new SqlCommand("DeleteClient", conn);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.AddWithValue("@ClientID", id);
			int delcount = cmd.ExecuteNonQuery();
			if (delcount == 1)
			{
				Response.Write("<script> alert('Deletion Successful');</script>");
				GridView1.EditIndex = -1;
				BindGridview();
			}
			else
			{
				Response.Write("<script> alert('Deletion UnSuccessful');</script>" );
			}

		}

		protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
		{
				GridView1.PageIndex = e.NewPageIndex;
			    BindGridview();

		}
		void ClearFormFields()
		{
			TextBox1.Text = "";
			TextBox2.Text = "";
			TextBox3.Text = "";
			TextBox4.Text = "";
			DropDownList1.SelectedIndex = -1;
		}


		protected void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				SqlConnection con = new SqlConnection(strcon);
				con.Open();
				SqlCommand cmd = new SqlCommand("Gridview", con);
				cmd.CommandType = CommandType.StoredProcedure;

				String clientid= TextBox1.Text.Trim();
				String clientname = TextBox2.Text.Trim();
				String clientnumber = TextBox3.Text.Trim();
				String clientemail = TextBox4.Text.Trim();
				String clientcity = DropDownList1.SelectedValue;

				cmd.Parameters.AddWithValue("@ClientID",clientid);
				cmd.Parameters.AddWithValue("@ClientName", clientname);
				cmd.Parameters.AddWithValue("@ClientEmail",clientemail);
				cmd.Parameters.AddWithValue("@ClientNumber", clientnumber);
				cmd.Parameters.AddWithValue("@ClientCity", clientcity);

				int rowcount = cmd.ExecuteNonQuery();
				if (rowcount == 1)
				{
					Response.Write("<script> alert('Data insertion Successful');</script>");
					BindGridview();
					ClearFormFields();
				}
				else
				{
					Response.Write("<script> alert('Data insertion Failed');</script>");
				}


			}
			catch (Exception x)
			{
				Response.Write("<script>alert('" + x.Message + "');</script>");
			}
		}

		
	}
	
}