using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentWebApplication
{
	public partial class WebForm8 : System.Web.UI.Page
	{

		string clientid = "781382240110-a9eh9gtmjtvkme4h96a0gcfauogb8rae.apps.googleusercontent.com";
		string clientsecret = "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";
		string redirection_url = "https://localhost:44385/default.aspx";
		string url = "https://accounts.google.com/o/oauth2/token";

		public class Tokenclass
		{
			public string access_token { get; set; }
			public string token_type { get; set; }
			public int expires_in { get; set; }
			public string refresh_token { get; set; }
		}
		public class Userclass
		{
			public string id { get; set; }
			public string name { get; set; }
			public string given_name { get; set; }
			public string family_name { get; set; }
			public string link { get; set; }
			public string picture { get; set; }
			public string gender { get; set; }
			public string locale { get; set; }
		}
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (Request.QueryString["code"] != null)
				{
					GetToken(Request.QueryString["code"].ToString());

				}
			}
		}
		public void GetToken(string code)
		{

			string poststring = "grant_type=authorization_code&code=" + code + "&client_id=" + clientid + "&client_secret=" + clientsecret + "&redirect_uri=" + redirection_url + "";
			var request = (HttpWebRequest)WebRequest.Create(url);
			request.ContentType = "application/x-www-form-urlencoded";
			request.Method = "POST";
			UTF8Encoding utfenc = new UTF8Encoding();
			byte[] bytes = utfenc.GetBytes(poststring);
			Stream outputstream = null;
			try
			{
				request.ContentLength = bytes.Length;
				outputstream = request.GetRequestStream();
				outputstream.Write(bytes, 0, bytes.Length);
			}
			catch
			{ }
			var response = (HttpWebResponse)request.GetResponse();
			var streamReader = new StreamReader(response.GetResponseStream());
			string responseFromServer = streamReader.ReadToEnd();
			JavaScriptSerializer js = new JavaScriptSerializer();
			Tokenclass obj = js.Deserialize<Tokenclass>(responseFromServer);
			GetuserProfile(obj.access_token);
		}

		public void GetuserProfile(string accesstoken)
		{
			string url = "https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=" + accesstoken + "";
			WebRequest request = WebRequest.Create(url);
			request.Credentials = CredentialCache.DefaultCredentials;
			WebResponse response = request.GetResponse();
			Stream dataStream = response.GetResponseStream();
			StreamReader reader = new StreamReader(dataStream);
			string responseFromServer = reader.ReadToEnd();
			reader.Close();
			response.Close();
			JavaScriptSerializer js = new JavaScriptSerializer();
			Userclass userinfo = js.Deserialize<Userclass>(responseFromServer);


			string id = userinfo.id;
			string name = userinfo.name;
			InsertUserData(id, name);


		}

		public void InsertUserData(string id, string name)
		{
			string connectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
			string insertQuery = "INSERT INTO LoginwithGo (Userid,Name) VALUES (@Userid, @Name)";

			using (SqlConnection connection = new SqlConnection(connectionString))
			{
				using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
				{
					cmd.Parameters.AddWithValue("@UserID", id);
					cmd.Parameters.AddWithValue("@UserName", name);

					try
					{
						connection.Open();
						int rowsAffected = cmd.ExecuteNonQuery();

						if (rowsAffected > 0)
						{
							
							Console.WriteLine("User data inserted successfully.");
						}
						else
						{
							
							Console.WriteLine("User data insertion failed.");
						}
					}
					catch (Exception ex)
					{
						
						Console.WriteLine("An error occurred: " + ex.Message);
					}
				}
			}
		}
	}
}
