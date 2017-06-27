using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Account_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Load RESULT Drop Down List
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins", con);
            SqlDataAdapter da2 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks", con);
            SqlDataAdapter da3 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da2.Fill(dt);
            da3.Fill(dt);
            ddl_result.DataSource = dt;
            ddl_result.DataTextField = "info";
            ddl_result.DataValueField = "ID";
            DataBind();
        }
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void ddl_result_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Fill Up Information
        string searchid = ddl_result.SelectedValue;
        lbl_id.Text = searchid;
        lbl_name.Text = "hahaha";
        Response.Write("testing");
    }

}