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
    string id;
    string name;
    string nric;
    string trainname;
    string loadtrainid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            

            SqlDataAdapter da1 = new SqlDataAdapter("select * from Routes", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            ddl_routeid.DataSource = dt1;
            ddl_routeid.DataTextField = "Route_ID";
            DataBind();

            
        }
    }



    protected void Btn_AddReservation_Click(object sender, EventArgs e)
    {
        con.Open();


        SqlDataAdapter da = new SqlDataAdapter("select * from Routes where Route_ID='" + ddl_routeid.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
        loadtrainid = dt.Rows[0][5].ToString();
        


        SqlDataAdapter da1 = new SqlDataAdapter("select * from Trains where Train_ID='" + loadtrainid + "'", con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);

        trainname = dt1.Rows[0][1].ToString();

        string uname = (string)(Session["member"]);
        SqlDataAdapter da2 = new SqlDataAdapter("select * from Members where Username='" + uname + "'", con);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        id = dt2.Rows[0][0].ToString();
        name = dt2.Rows[0][1].ToString();
        nric = dt2.Rows[0][2].ToString();

        string query10 = "select count(*) from Bookings where Route_ID = '" + ddl_routeid.SelectedItem.ToString() + "' AND Seat_ID = '" + ddl_coach.SelectedItem.ToString() + " - " + ddl_seatrow.SelectedItem.ToString() + ddl_seat.SelectedItem.ToString() + "'";
        SqlCommand cmd10 = new SqlCommand(query10, con);
        int checkseat = Convert.ToInt32(cmd10.ExecuteScalar().ToString());
        if (checkseat < 1)
        {
            lbl_repeatseat.Visible = false;
            string query = "insert into DummyBookings (Seat_ID, Train_ID, Train_Name, Route_ID, Origin, Destination, Date, Time, Price, Member_ID, Member_Name, Member_NRIC) values (@seatid, @trainid, @trainname, @routeid, @origin, @destination, @date, @time, @price, @id, @name, @nric)";
            SqlCommand sql = new SqlCommand(query, con);
            sql.Parameters.AddWithValue("@seatid", ddl_coach.SelectedItem.ToString() + " - " + ddl_seatrow.SelectedItem.ToString() + ddl_seat.SelectedItem.ToString());
            sql.Parameters.AddWithValue("@trainid", loadtrainid);
            sql.Parameters.AddWithValue("@trainname", trainname);
            sql.Parameters.AddWithValue("@routeid", ddl_routeid.SelectedItem.ToString());
            sql.Parameters.AddWithValue("@origin", tb_origin.Text);
            sql.Parameters.AddWithValue("@destination", tb_destination.Text);
            sql.Parameters.AddWithValue("@date", tb_date.Text);
            sql.Parameters.AddWithValue("@time", tb_time.Text);
            sql.Parameters.AddWithValue("@price", tb_price.Text);
            sql.Parameters.AddWithValue("@id", id);
            sql.Parameters.AddWithValue("@name", name);
            sql.Parameters.AddWithValue("@nric", nric);
            sql.ExecuteNonQuery();
        }
        else
        {
            lbl_repeatseat.Visible = true;
        }

        con.Close();
        GridView1.DataBind();
    }



    protected void btn_show_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Routes where Route_ID='" + ddl_routeid.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        tb_origin.Text = dt.Rows[0][1].ToString();
        tb_destination.Text = dt.Rows[0][2].ToString();
        tb_date.Text = dt.Rows[0][3].ToString();
        tb_time.Text = dt.Rows[0][4].ToString();
        loadtrainid = dt.Rows[0][5].ToString();
        tb_price.Text = dt.Rows[0][6].ToString();
        
       

    }



    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter("select * from DummyBookings", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        string query = "select count(*) from DummyBookings";
        SqlCommand cmd = new SqlCommand(query, con);
        int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        for (int a = 0; a < check; a = a + 1)
        {
            string query2 = "insert into Bookings (Seat_ID, Train_ID, Train_Name, Route_ID, Origin, Destination, Date, Time, Price, Member_ID, Member_Name, Member_NRIC) values (@seatid, @trainid, @trainname, @routeid, @origin, @destination, @date, @time, @price, @id, @name, @nric)";
            SqlCommand sql = new SqlCommand(query2, con);
            sql.Parameters.AddWithValue("@seatid", dt.Rows[a][1].ToString());
            sql.Parameters.AddWithValue("@trainid", dt.Rows[a][2].ToString());
            sql.Parameters.AddWithValue("@trainname", dt.Rows[a][3].ToString());
            sql.Parameters.AddWithValue("@routeid", dt.Rows[a][4].ToString());
            sql.Parameters.AddWithValue("@origin", dt.Rows[a][5].ToString());
            sql.Parameters.AddWithValue("@destination", dt.Rows[a][6].ToString());
            sql.Parameters.AddWithValue("@date", dt.Rows[a][7].ToString());
            sql.Parameters.AddWithValue("@time", dt.Rows[a][8].ToString());
            sql.Parameters.AddWithValue("@price", dt.Rows[a][9].ToString());
            sql.Parameters.AddWithValue("@id", dt.Rows[a][10].ToString());
            sql.Parameters.AddWithValue("@name", dt.Rows[a][11].ToString());
            sql.Parameters.AddWithValue("@nric", dt.Rows[a][12].ToString());
            sql.ExecuteNonQuery();
        }


        string query3 = "TRUNCATE TABLE DummyBookings";
        SqlCommand cmd2 = new SqlCommand(query3, con);
        cmd2.ExecuteNonQuery();

        con.Close();

        Response.Redirect("Payment.aspx");
    }
}