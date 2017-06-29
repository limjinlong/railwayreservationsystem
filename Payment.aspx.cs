using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_required.Visible = false;
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        if(txt_name.Text == "" || txt_card.Text =="" || txt_date.Text == "" || txt_cvv.Text =="" )
        {
            lbl_required.Visible = true;
            lbl_required.Text = "Please enter all textbox!";
        }
        else
        {
            Response.Redirect("Payment_Successful.aspx");
        }
        
    }
}