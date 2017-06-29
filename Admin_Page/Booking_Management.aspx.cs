using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Page_Booking_Management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_feedback.Visible = false;
        lbl_requiredsearch.Visible = false;
    }

 

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lbl_feedback.Text = "BOOKING HAS BEEN DELETED SUCCESSFULLY";
        lbl_feedback.Visible = true;
        GridView1.DataBind();
    }



    protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lbl_feedback.Text = "BOOKING HAS BEEN DELETED SUCCESSFULLY";
        lbl_feedback.Visible = true;
        GridView2.DataBind();

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        /*if (e.Row.RowState != DataControlRowState.Edit) // check for RowState
        {
            if (e.Row.RowType == DataControlRowType.DataRow) //check for RowType
            {
                string id = e.Row.Cells[0].Text; // Get the id to be deleted
                                                 //cast the ShowDeleteButton link to linkbutton
                LinkButton lb = (LinkButton)e.Row.Cells[14].Controls[0];
                if (lb != null)
                {
                    //attach the JavaScript function with the ID as the paramter
                    lb.Attributes.Add("onclick", "return ConfirmOnDelete('" + id + "');");
                }
            }
        }*/
    }



    protected void Refresh_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel3.Visible = false;
        txt_search.Text = "";
    }

    protected void txt_search_Click(object sender, EventArgs e)
    {
        
        if (txt_search.Text == "")
        {
            lbl_requiredsearch.Text = "Please fill in the textbox";
            lbl_requiredsearch.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }
}