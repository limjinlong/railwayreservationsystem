using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Register_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {

    }

    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Members where Username ='" + txt_uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("<script>alert('Username already exist');</script>");
                txt_uname.Text = string.Empty;
                txt_nric.Text = string.Empty;
            }

            else
            {
                string query2 = "select count(*) from Members where Email ='" + txt_email.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                int check1 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                if (check1 > 0)
                {
                    Response.Write("<script>alert('Email already exist');</script>");
                    txt_uname.Text = string.Empty;
                    txt_nric.Text = string.Empty;
                    txt_email.Text = string.Empty;
                }
                else
                {
                    //Response.Write("<script>alert('Register Successfully! ');</script>");
                    string query1 = "insert into Members (Name, NRIC, Email, Phone_No, Gender, Username, Password) values (@name, @nric, @email, @num, @gender, @uname, @pwd)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@name", txt_name.Text);
                    cmd1.Parameters.AddWithValue("@nric", txt_nric.Text);
                    cmd1.Parameters.AddWithValue("@email", txt_email.Text);
                    cmd1.Parameters.AddWithValue("@num", txt_num.Text);
                    cmd1.Parameters.AddWithValue("@gender", ddl_gender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@uname", txt_uname.Text);
                    cmd1.Parameters.AddWithValue("@pwd", txt_pwd.Text);
                    cmd1.ExecuteNonQuery();

                    //Response.Redirect("Login.aspx");
                    ScriptManager.RegisterStartupScript(this, this.GetType(),"alert","alert('Register Successfully!');window.location ='Login.aspx';",
true);
                }
               
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void btn_Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}