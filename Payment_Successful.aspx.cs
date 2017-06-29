using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_Successful : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_ok_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home_Member.aspx");
    }
}