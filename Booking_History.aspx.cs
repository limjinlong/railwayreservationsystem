using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking_History : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string uname = (string)(Session["member"]);
        SqlDataAdapter da = new SqlDataAdapter("select * from Members where Username='" + uname + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        lbl_id.Text = dt.Rows[0][0].ToString();
        lbl_id.Visible = false;
    }






    
}