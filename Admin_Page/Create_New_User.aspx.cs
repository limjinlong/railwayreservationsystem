using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Create_New_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        if (tb_password.Text.Equals(tb_confirmpassword.Text))
        {

        }
        else
        {
            //WARNING!!
        }
    }
}