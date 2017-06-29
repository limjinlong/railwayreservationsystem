using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FD_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }


    }



    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        tb_Name.Enabled = true;
        tb_NRIC.Enabled = true;
        tb_PhoneNo.Enabled = true;
        tb_address.Enabled = true;
        tb_Email.Enabled = true;
        ddl_gender.Enabled = true;
        tb_Username.Enabled = true;
        tb_Password.Enabled = true;

    }

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "UPDATE FrontDesks SET [Name]='" + tb_Name.Text + "',[NRIC]='" + tb_NRIC.Text + "',[Email]='" + tb_Email.Text + "',[Phone_No]='" + tb_PhoneNo.Text + "',[Address]='" + tb_address.Text + "',[Gender]='" + ddl_gender.SelectedItem.ToString() + "',[Username]='" + tb_Username.Text + "',[Password]='" + tb_Password.Text + "' WHERE [ID]= '" + tb_ID.Text+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        con.Close();
        DisableTB();
        LoadData();

    }

    private void LoadData()
    {
        con.Open();
        string uname = (string)(Session["frontdesk"]);
        SqlDataAdapter da = new SqlDataAdapter("select * from FrontDesks where Username = '" + uname + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        tb_ID.Text = dt.Rows[0][0].ToString();
        tb_Name.Text = dt.Rows[0][1].ToString();
        tb_NRIC.Text = dt.Rows[0][2].ToString();
        tb_Email.Text = dt.Rows[0][3].ToString();
        tb_PhoneNo.Text = dt.Rows[0][4].ToString();
        tb_address.Text= dt.Rows[0][5].ToString();
        ddl_gender.Text = dt.Rows[0][6].ToString();
        tb_Username.Text = dt.Rows[0][7].ToString();
        tb_Password.Text = dt.Rows[0][8].ToString();

        con.Close();
    }

    private void DisableTB()
    {
        tb_Name.Enabled = false;
        tb_NRIC.Enabled = false;
        tb_PhoneNo.Enabled = false;
        tb_address.Enabled = false;
        tb_Email.Enabled = false;
        ddl_gender.Enabled = false;
        tb_Username.Enabled = false;
        tb_Password.Enabled = false;
    }
}