using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string uname = (string)(Session["admin"]);
        SqlDataAdapter da = new SqlDataAdapter("select * from Admins where Username = '" + uname + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lbl_adminid.Text = ds.Tables[0].Rows[0]["ID"].ToString();
        tb_adminname.Text = ds.Tables[0].Rows[0]["Name"].ToString();
        if (ds.Tables[0].Rows[0]["Gender"].ToString() == "Male")
        {
            ddl_gender.SelectedIndex = 0;
        }
        else
        {
            ddl_gender.SelectedIndex = 1;
        }
        tb_nric.Text = ds.Tables[0].Rows[0]["NRIC"].ToString();
        tb_email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
        tb_phone.Text = ds.Tables[0].Rows[0]["Phone_No"].ToString();
        tb_address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
        tb_username.Text = uname;
        tb_password.Text = ds.Tables[0].Rows[0]["Password"].ToString();
        DataBind();
    }

}