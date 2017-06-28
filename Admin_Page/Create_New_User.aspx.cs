﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Create_New_User : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_feedback.Visible = false;
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        if (tb_password.Text.Equals(tb_confirmpassword.Text))
        {
            try
            {
                con.Open();
                string query = null;
                if (rb_admin.Checked == true)
                {
                    query = "select count(*) from Admins where ID ='" + tb_id.Text + "'";
                }
                else if (rb_frontdesk.Checked == true)
                {
                    query = "select count(*) from FrontDesks where ID ='" + tb_id.Text + "'";
                }
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("User already exist.");
                }
                else
                {
                    string query1 = null;
                    if (rb_admin.Checked == true)
                    {
                        query1 = "insert into Admins (ID, Name, NRIC, Email, Phone_No, Address, Photo, Gender, Username, Password) values (@id,@name,@nric,@email,@phone,@address,@photo,@gender,@username,@password)";
                    }
                    else if (rb_frontdesk.Checked == true)
                    {
                        query1 = "insert into FrontDesks (ID, Name, NRIC, Email, Phone_No, Address, Photo, Gender, Username, Password) values (@id,@name,@nric,@email,@phone,@address,@photo,@gender,@username,@password)";
                    }
                    
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@id", tb_id.Text);
                    cmd1.Parameters.AddWithValue("@name", tb_name.Text);
                    cmd1.Parameters.AddWithValue("@nric", tb_nric.Text);
                    cmd1.Parameters.AddWithValue("@email", tb_email.Text);
                    cmd1.Parameters.AddWithValue("@phone", tb_phone.Text);
                    cmd1.Parameters.AddWithValue("@address", tb_address.Text);

                    Stream fs = FileUpload1.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);

                    cmd1.Parameters.AddWithValue("@photo", bytes);
                    if (rb_male.Checked == true)
                    {
                        cmd1.Parameters.AddWithValue("@gender", "Male");
                    }
                    else if (rb_female.Checked == true)
                    {
                        cmd1.Parameters.AddWithValue("@gender", "Female");
                    }
                    cmd1.Parameters.AddWithValue("@username", tb_username.Text);
                    cmd1.Parameters.AddWithValue("@password", tb_password.Text);
                    cmd1.ExecuteNonQuery();
                    lbl_feedback.Text = "NEW USER HAS BEEN ADDED SUCCESSFULLY";
                    lbl_feedback.Visible = true;
                    createuserclear();

                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
        else
        {
            //WARNING!!
        }
    }

    private void createuserclear()
    {
        tb_id.Text = "";
        tb_name.Text = "";
        tb_nric.Text = "";
        tb_email.Text = "";
        tb_phone.Text = "";
        tb_address.Text = "";
        tb_password.Text = "";
        rb_admin.Checked = true;
        rb_male.Checked = true;
    }
}
