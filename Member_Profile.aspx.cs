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
        if(!IsPostBack)
        {
            LoadData();
        }
        

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
        string query = "Update Members SET Name='" + tb_Name.Text + "',NRIC='" + tb_NRIC.Text + "',Email='" + tb_Email.Text + "',Phone_No='" + tb_PhoneNo.Text + "',Gender='" + tb_Gender.Text + "',Username='" + tb_Username.Text + "',Password='" + tb_Password.Text + "' WHERE ID= " + tb_ID.Text; 
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();

        con.Close();
        DisableTB();
        LoadData();

    }

    private void LoadData()
    {
        con.Open();
        string uname = (string)(Session["member"]);
        SqlDataAdapter da = new SqlDataAdapter("select * from Members where Username='" + uname + "'", con);
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

    private void DisableTB()
    {
        tb_Name.Enabled = false;
        tb_NRIC.Enabled = false;
        tb_PhoneNo.Enabled = false;
        tb_Email.Enabled = false;
        tb_Gender.Enabled = false;
        tb_Username.Enabled = false;
        tb_Password.Enabled = false;
    }


}
