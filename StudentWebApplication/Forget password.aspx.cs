using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using Microsoft.Ajax.Utilities;

namespace StudentWebApplication
{
	public partial class WebForm6 : System.Web.UI.Page
	{
		string randomCode;
		public static string to;

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			
			String from, pass, messagebody;
			Random random = new Random();
			randomCode =(random.Next(999999)).ToString();
			MailMessage message= new MailMessage();
			to=(TextBox1.Text).ToString();
			from = "arasuabikings@gmail.com";
			pass = "Abi123@";
			messagebody = "your reset code is " + randomCode;
			message.To.Add(to);
			message.From=new MailAddress(from);
			message.Body=messagebody;
			message.Subject = "password resting code";
			SmtpClient smtp= new SmtpClient("smtp.gmail.com");
			smtp.EnableSsl = true;
			smtp.Port = 587;
			smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
			smtp.Credentials=new NetworkCredential(from, pass);
			try
			{
				smtp.Send(message);
				Response.Write("code send successfully");
				

			}
			catch (Exception ex)
			{
				Response.Write(ex.Message);
			}

		}

		protected void Button2_Click1(object sender, EventArgs e)
		{
			if (randomCode == (TextBox2.Text).ToString())
			{
				to = TextBox1.Text;
				Response.Redirect("newpassword.aspx");

			}
			else
			{
				Response.Write("Wrong OTP");
			}
		}
	}
}