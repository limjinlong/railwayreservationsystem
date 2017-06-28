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

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Load RESULT Drop Down List
            
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

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_show_Click(object sender, EventArgs e)
    {
        //Fill Up Information
        string searchid = ddl_result.SelectedValue;
        int role = 0;

        //Check Role
        con.Open();
        string query = "select count(*) from Admins where ID ='" + searchid + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        if (check < 1)
        {
            string query2 = "select count(*) from FrontDesks where ID ='" + searchid + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            int check2 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
            if (check2 < 1)
            {
                string query3 = "select count(*) from Members where ID ='" + searchid + "'";
                SqlCommand cmd3 = new SqlCommand(query3, con);
                int check3 = Convert.ToInt32(cmd3.ExecuteScalar().ToString());
                if (check3 < 1)
                {
                    Response.Write("Error");
                }
                else
                {
                    role = 3; //member
                }
            }
            else
            {
                role = 2; //frontdesk
            }
        }
        else
        {
            role = 1; //admin
        }

        //FILL IN INFORMATION
        lbl_id.Text = searchid;
        if (role == 1)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Admins where ID = '" + searchid + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lbl_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            lbl_gender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            lbl_nric.Text = ds.Tables[0].Rows[0]["NRIC"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lbl_phone.Text = ds.Tables[0].Rows[0]["Phone_No"].ToString();
            lbl_address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            DataBind();
        }
        else if (role == 2)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from FrontDesks where ID = '" + searchid + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lbl_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            lbl_gender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            lbl_nric.Text = ds.Tables[0].Rows[0]["NRIC"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lbl_phone.Text = ds.Tables[0].Rows[0]["Phone_No"].ToString();
            lbl_address.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            DataBind();
        }
        else if (role == 3)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Members where ID = '" + searchid + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lbl_name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            lbl_gender.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
            lbl_nric.Text = ds.Tables[0].Rows[0]["NRIC"].ToString();
            lbl_email.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            lbl_phone.Text = ds.Tables[0].Rows[0]["Phone_No"].ToString();
            lbl_address.Text = "-";
            DataBind();
        }

        con.Close();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        if (lbl_id.Text != "[ID]")
        {
            int role = 0;
            con.Open();
            //check role
            string query = "select count(*) from Admins where ID ='" + lbl_id.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check < 1)
            {
                string query2 = "select count(*) from FrontDesks where ID ='" + lbl_id.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                int check2 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                if (check2 < 1)
                {
                    string query3 = "select count(*) from Members where ID ='" + lbl_id.Text + "'";
                    SqlCommand cmd3 = new SqlCommand(query3, con);
                    int check3 = Convert.ToInt32(cmd3.ExecuteScalar().ToString());
                    if (check3 < 1)
                    {
                        Response.Write("Error");
                    }
                    else
                    {
                        role = 3; //member
                    }
                }
                else
                {
                    role = 2; //frontdesk
                }
            }
            else
            {
                role = 1; //admin
            }

            //DELETE COMMAND
            string query4 = null;
            if (role == 1)
            {
                query4 = "delete from Admins where ID = '" + lbl_id.Text + "'";
            }
            else if (role == 2)
            {
                query4 = "delete from FrontDesks where ID = '" + lbl_id.Text + "'";
            }
            else if (role == 3)
            {
                query4 = "delete from Members where ID = '" + lbl_id.Text + "'";
            }
            SqlCommand cmd4 = new SqlCommand(query4, con);
            cmd4.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.RawUrl); //refresh page
        }
        else
        {
            //Do Nothing
        }
    }

    protected void btn_filter_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        if (ddl_role.SelectedIndex == 0)
        {
            if (ddl_choice.SelectedIndex == 0)
            {
                //all role, search by name
                SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins where Name like '%" + tb_choice.Text + "%'", con);
                SqlDataAdapter da2 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks where Name like '%" + tb_choice.Text + "%'", con);
                SqlDataAdapter da3 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members where Name like '%" + tb_choice.Text + "%'", con);
                da.Fill(dt);
                da2.Fill(dt);
                da3.Fill(dt);
                
            }
            else if (ddl_choice.SelectedIndex == 1)
            {
                //all role, search by nric
                SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins where NRIC like '%" + tb_choice.Text + "%'", con);
                SqlDataAdapter da2 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks where NRIC like '%" + tb_choice.Text + "%'", con);
                SqlDataAdapter da3 = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members where NRIC like '%" + tb_choice.Text + "%'", con);
                da.Fill(dt);
                da2.Fill(dt);
                da3.Fill(dt);
            }
        }
        else if (ddl_role.SelectedIndex == 1)
        {
            if (tb_choice.Text == "")
            {
                //search all admin
                SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins", con);
                da.Fill(dt);
            }
            else
            {
                if (ddl_choice.SelectedIndex == 0)
                {
                    //admin role, search by name
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins where Name like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
                else if (ddl_choice.SelectedIndex == 1)
                {
                    //admin role, search by nric
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Admins where NRIC like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
            }
        }
        else if (ddl_role.SelectedIndex == 2)
        {
            if (tb_choice.Text == "")
            {
                //search front desk role
                SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks", con);
                da.Fill(dt);
            }
            else
            {
                if (ddl_choice.SelectedIndex == 0)
                {
                    //frontdesk role, search by name
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks where Name like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
                else if (ddl_choice.SelectedIndex == 1)
                {
                    //frontdesk role, search by nric
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from FrontDesks where NRIC like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
            }
        }
        else if (ddl_role.SelectedIndex == 3)
        {
            if (tb_choice.Text == "")
            {
                //search all member
                SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members", con);
                da.Fill(dt);
            }
            else
            {
                if (ddl_choice.SelectedIndex == 0)
                {
                    //member role, search by name
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members where Name like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
                else if (ddl_choice.SelectedIndex == 1)
                {
                    //member role, search by nric
                    SqlDataAdapter da = new SqlDataAdapter("select ID, Name, NRIC, ISNULL(ID,'') + ' - ' + ISNULL(Name,'') + ' ' + ISNULL(NRIC,'') as info from Members where NRIC like '%" + tb_choice.Text + "%'", con);
                    da.Fill(dt);
                }
            }
        }

        ddl_result.DataSource = dt;
        ddl_result.DataTextField = "info";
        ddl_result.DataValueField = "ID";
        DataBind();
    }

    
}