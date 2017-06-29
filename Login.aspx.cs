using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Register_Login : System.Web.UI.Page
{
    private object configurationManager;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (ddl_roles.SelectedItem.ToString() == "Members")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Members where Username = '" + txt_uname.Text +
                "' and Password = '" + txt_pwd.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (count > 0)
            {
                SqlCommand cmdUname = new SqlCommand("Select Username from Members where Username = '" + txt_uname.Text + "'", con);
                string uname = cmdUname.ExecuteScalar().ToString().Replace(" ", "");
                Session["member"] = uname;
                Response.Redirect("Home_Member.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password');</script>");
                txt_uname.Text = string.Empty;
                txt_pwd.Text = string.Empty;
            }
            con.Close();
        }

        else if (ddl_roles.SelectedItem.ToString() == "Admin")
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand("select count(*) from Admins where Username = '" + txt_uname.Text +
                "' and Password = '" + txt_pwd.Text + "'", con1);
            int count2 = Convert.ToInt32(cmd1.ExecuteScalar().ToString());

            if (count2 > 0)
            {
                SqlCommand cmdUname1 = new SqlCommand("Select Username from Admins where Username = '" + txt_uname.Text + "'", con1);
                string uname = cmdUname1.ExecuteScalar().ToString().Replace(" ", "");
                Session["admin"] = uname;
                Response.Redirect("Admin_Page/Home_Admin.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password');</script>");
                txt_uname.Text = string.Empty;
                txt_pwd.Text = string.Empty;
            }
            con1.Close();
        }

        else 
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con2.Open();
            SqlCommand cmd2 = new SqlCommand("select count(*) from FrontDesks where Username = '" + txt_uname.Text +
                "' and Password = '" + txt_pwd.Text + "'", con2);
            int count2 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());

            if (count2 > 0)
            {
                SqlCommand cmdUname2 = new SqlCommand("Select Username from FrontDesks where Username = '" + txt_uname.Text + "'", con2);
                string uname = cmdUname2.ExecuteScalar().ToString().Replace(" ", "");
                Session["frontdesk"] = uname;
                Response.Redirect("Home_FD.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password');</script>");
                txt_uname.Text = string.Empty;
                txt_pwd.Text = string.Empty;
            }
            con2.Close();
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot_Password.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}