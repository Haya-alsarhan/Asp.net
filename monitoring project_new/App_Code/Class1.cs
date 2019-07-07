using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Configuration;


/// <summary>

/// </summary>


public class Class1
{
    public static string connString = ConfigurationManager.ConnectionStrings["ConnectionStringp"].ToString();

    public static bool Send_Email(string mailFrom, string mailTo, string mailMessage, string subject)
    {
        try
        {

            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress(mailFrom);
            // Recipient e-mail address.
            Msg.To.Add(mailTo);
            Msg.Subject = subject;

            Msg.Body = mailMessage;
            Msg.IsBodyHtml = true;
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("haya909090@gmail.com", "12345_haya");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;

            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
    }


    public static string Send_SMS(string mobile, string message)
    {
        try
        {
            WebRequest request = WebRequest.Create("sms gateway account.");
            WebResponse response = request.GetResponse();
            Stream datastream = response.GetResponseStream();
            StreamReader reader = new StreamReader(datastream);
            string responsefromserver = reader.ReadToEnd();
            reader.Close();
            datastream.Close();
            response.Close();

            return responsefromserver;

        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }
    //End of user defined function...
}
