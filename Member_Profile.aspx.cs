using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();

    }



    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        tb_Name.Enabled = true;
        tb_NRIC.Enabled = true;
        tb_PhoneNo.Enabled = true;
        tb_Email.Enabled = true;
        tb_Gender.Enabled = true;
        tb_Username.Enabled = true;
        tb_Password.Enabled = true;

    }

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "Update Members set Name ='" + tb_Name.Text + "',NRIC ='" + tb_NRIC.Text + "',Email ='" + tb_Email.Text + "',Phone_No ='" + tb_PhoneNo.Text + "',Gender ='" + tb_Gender.Text + "',Username ='" + tb_Username.Text + "',Password ='" + tb_Password.Text + "' where ID = '" + tb_ID.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        con.Close();
        LoadData();

    }

    private void LoadData()
    {
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Members", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        tb_ID.Text = dt.Rows[0][0].ToString();
        tb_Name.Text = dt.Rows[0][1].ToString();
        tb_NRIC.Text = dt.Rows[0][2].ToString();
        tb_Email.Text = dt.Rows[0][3].ToString();
        tb_PhoneNo.Text = dt.Rows[0][4].ToString();
        tb_Gender.Text = dt.Rows[0][5].ToString();
        tb_Username.Text = dt.Rows[0][6].ToString();
        tb_Password.Text = dt.Rows[0][7].ToString();

        con.Close();
    }

}
