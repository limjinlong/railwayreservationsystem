using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Change_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = (string)(Session["admin_id"]);
        lbl_warning1.Visible = false;
        lbl_warning2.Visible = false;
    }

    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Admins where ID = '" + id + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (tb_currentpassword.Text.Equals(ds.Tables[0].Rows[0]["Password"].ToString()))
        {
            con.Open();
            string query = "Update Admins set Password ='" + tb_newpassword.Text + "' where ID = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Update Successfully!');window.location ='../Login.aspx';", true);
        }
        else
        {
            lbl_warning1.Visible = true;
            lbl_warning2.Visible = true;
        }
    }
}