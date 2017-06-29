using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Seat_Reservation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Routes", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_routeid.DataSource = dt;
            ddl_routeid.DataTextField = "Route_ID";
            DataBind();

        }
    }



    protected void Btn_AddReservation_Click(object sender, EventArgs e)
    {
        con.Open();

        string query = "insert into Bookings (Seat_ID, Train_ID, Train_Name, Route_ID, Origin, Destination, Date, Time, Price, Member_ID, Member_Name, Member_NRIC) values (@seatid, @trainid, @trainname, @routeid, @origin, @destination, @date, @time, @price, @id, @name, @nric)";
        SqlCommand sql = new SqlCommand(query, con);
        sql.Parameters.AddWithValue("@seatid", tb_date.Text);
        sql.Parameters.AddWithValue("@trainid", tb_date.Text);
        sql.Parameters.AddWithValue("@trainname", tb_date.Text);
        sql.Parameters.AddWithValue("@routeid", ddl_routeid.SelectedItem.ToString());
        sql.Parameters.AddWithValue("@origin", tb_origin.Text);
        sql.Parameters.AddWithValue("@destination", tb_destination.Text);
        sql.Parameters.AddWithValue("@date", tb_date.Text);
        sql.Parameters.AddWithValue("@time", tb_time.Text);
        sql.Parameters.AddWithValue("@price", tb_price.Text);
        sql.Parameters.AddWithValue("@id", tb_date.Text);
        sql.Parameters.AddWithValue("@name", tb_date.Text);
        sql.Parameters.AddWithValue("@nric", tb_date.Text);
        sql.ExecuteNonQuery();

        con.Close();
        GridView1.DataBind();
    }



    protected void btn_show_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from Routes where Route_ID='" + ddl_routeid.Text + "'", con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        tb_origin.Text = dt1.Rows[0][1].ToString();
        tb_destination.Text = dt1.Rows[0][2].ToString();
        tb_date.Text = dt1.Rows[0][3].ToString();
        tb_time.Text = dt1.Rows[0][4].ToString();
        tb_price.Text = dt1.Rows[0][6].ToString();
    }



    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}