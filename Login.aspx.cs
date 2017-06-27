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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from Members where Username = '" + txt_uname.Text +
            "' and Password = '" + txt_pwd.Text + "'", con);
        int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        if (count > 0)
        {
            SqlCommand cmdUname = new SqlCommand("Select Username from Members where Username = '" + txt_uname.Text + "'", con);
            string uname = cmdUname.ExecuteScalar().ToString().Replace(" ", "");
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('invalid username or password');</script>");
            txt_uname.Text = string.Empty;
            txt_pwd.Text = string.Empty;
        }
        con.Close();
    }
}