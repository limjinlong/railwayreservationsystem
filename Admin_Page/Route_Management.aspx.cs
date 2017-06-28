using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Route_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_feedback.Visible = false;
        lbl_feedback1.Visible = false;
        refreshtrain(); //refresh train ID drop down list
    }

    protected void btn_addroute_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Routes where Route_ID ='" + tb_routeid.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("Route already exist.");
            }
            else
            {
                string query1 = "insert into Routes (Route_ID, Origin, Destination, Date, Time, Train_ID, Price) values (@routeid,@origin,@destination,@date,@time,@trainid,@price)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@routeid", tb_routeid.Text);
                cmd1.Parameters.AddWithValue("@origin", tb_origin.Text);
                cmd1.Parameters.AddWithValue("@destination", tb_destination.Text);
                cmd1.Parameters.AddWithValue("@date", tb_date.Text);
                cmd1.Parameters.AddWithValue("@time", tb_time.Text);
                cmd1.Parameters.AddWithValue("@trainid", ddl_trainid.SelectedItem.Text);
                cmd1.Parameters.AddWithValue("@price", tb_price.Text);
                cmd1.ExecuteNonQuery();
                lbl_feedback.Text = "NEW ROUTE HAS BEEN ADDED SUCCESSFULLY";
                lbl_feedback.Visible = true;
                GridView1.DataBind();
                routeclear();

            }

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }

    private void routeclear()
    {
        tb_routeid.Text = "";
        tb_origin.Text = "";
        tb_destination.Text = "";
        tb_date.Text = "dd/mm/yyyy";
        tb_time.Text = "";
        ddl_trainid.SelectedIndex = 0;
        tb_price.Text = "";
    }

    private void refreshtrain()
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select Train_ID from Trains", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_trainid.DataSource = dt;
            ddl_trainid.DataTextField = "Train_ID";
            DataBind();
        }
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        lbl_feedback1.Text = "ROUTE HAS BEEN UPDATED SUCCESSFULLY";
        lbl_feedback1.Visible = true;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lbl_feedback1.Text = "ROUTE HAS BEEN DELETED SUCCESSFULLY";
        lbl_feedback1.Visible = true;
        GridView1.DataBind();
    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
      /*  if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[0].Text; // Get the id to be deleted
                                                 //cast the ShowDeleteButton link to linkbutton
                LinkButton lb = (LinkButton)e.Row.Cells[8].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }*/
    }
}