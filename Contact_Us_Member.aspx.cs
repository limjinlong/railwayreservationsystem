using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void SendMail()
    {
        // your gmail address
        var fromAddress = "wapp1609@gmail.com";
        // arecipient email address
        var toAddress = YourEmail.Text.ToString();
        //your gmail password
        const string fromPassword = "wappassignment1609";
        // email format
        string subject = YourSubject.Text.ToString();
        string body = "From: " + YourName.Text + "\n";
        body += "Email: " + YourEmail.Text + "\n";
        body += "Subject: " + YourSubject.Text + "\n";
        body += "Question: \n" + Comments.Text + "\n";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
       
        try
        {
            SendMail();
            DisplayMessage.Text = "Thank you. We will get back to you soon.";
            DisplayMessage.Visible = true;
            YourSubject.Text = "";
            YourEmail.Text = "";
            YourName.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }
    }
    
}