using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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

            DataBind();
        }
    }


    protected void btn_change_Click(object sender, EventArgs e)
    {
        Session["admin_id"] = lbl_adminid.Text;
        Response.Redirect("Change_Password.aspx");
    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "UPDATE Admins SET [Name] ='" + tb_adminname.Text + "', [NRIC] = '" + tb_nric.Text + "', [Email] = '" + tb_email.Text + "', [Phone_No] = '" + tb_phone.Text + "', [Address] = '" + tb_address.Text + "', [Gender] = '" + ddl_gender.SelectedItem.ToString() + "', [Username] = '" + tb_username.Text + "' where [ID] = '" + lbl_adminid.Text + "'";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Information Update Successfully! Please Re-Login Into The System');window.location ='../Login.aspx';", true);
    }

    protected void btn_reset_Click(object sender, EventArgs e)
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
        DataBind();
    }

}