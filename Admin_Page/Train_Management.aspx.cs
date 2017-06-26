using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Train_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_feedback.Visible = false;
    }


    protected void btn_addtrain_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Trains where Train_ID ='" + tb_trainid.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("Train already exist.");
            }
            else
            {
                string query1 = "insert into Trains (Train_ID, Name, Capacity) values (@trainid,@trainname,@traincapacity)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@trainid", tb_trainid.Text);
                cmd1.Parameters.AddWithValue("@trainname", tb_trainname.Text);
                cmd1.Parameters.AddWithValue("@traincapacity", tb_traincapacity.Text);
                cmd1.ExecuteNonQuery();
                lbl_feedback.Text = "NEW TRAIN HAS BEEN ADDED SUCCESSFULLY";
                lbl_feedback.Visible = true;
                trainclear();

            }

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }

    private void ShowAsync()
    {
        throw new NotImplementedException();
    }

    protected void btn_clear_Click(object sender, EventArgs e)
    {
        trainclear();
    }

    public void trainclear()
    {
        tb_trainid.Text = "";
        tb_trainname.Text = "";
        tb_traincapacity.Text = "";
    }
}
