using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int role = 0;
        string username = "";
        string password = "";
        //Check Role
        con.Open();
        string query = "select count(*) from Admins where Email ='" + txt_email.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if (check < 1)
        {
            string query2 = "select count(*) from FrontDesks where Email ='" + txt_email.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            int check2 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            if (check2 < 1)
            {
                string query3 = "select count(*) from Members where Email ='" + txt_email.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                int check3 = Convert.ToInt32(cmd3.ExecuteScalar().ToString());
                if (check3 < 1)
                {
                    Response.Write("Error");
                }
                else
                {
                    role = 3; //member
                }
            }
            else
            {
                role = 2; //frontdesk
            }
        }
        else
        {
            role = 1; //admin
        }
        if (role == 1)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Admins where Email = '" + txt_email.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            username = dt.Rows[0][8].ToString();
            password = dt.Rows[0][9].ToString();
        }
        else if (role == 2)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from FrontDesks where Email = '" + txt_email.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            username = dt.Rows[0][7].ToString();
            password = dt.Rows[0][8].ToString();
        }
        else if (role == 3)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from FrontDesks where Email = '" + txt_email.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            username = dt.Rows[0][6].ToString();
            password = dt.Rows[0][7].ToString();
        }
        else
        {
            Response.Write("<script>alert('Invalid Email');</script>");
        }
        
        con.Close();
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("wapp1609g@gmail.com");
            msg.To.Add(txt_email.Text);
            msg.Subject = " Recover your Password";
            msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
            msg.IsBodyHtml = true;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "wapp1609@gmail.com"; //Your Email ID
            ntwd.Password = "wappassignment1609"; // Your Password
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            Label1.Text = "Username and Password Sent Successfully";
            Label1.ForeColor = System.Drawing.Color.ForestGreen;
        }
    }
}