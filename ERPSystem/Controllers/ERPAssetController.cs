using ERPSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Text;
using System.Web.Http;

namespace ERPSystem.Controllers
{
    public class ERPAssetController : ApiController
    {

     
        [HttpGet]
        [Route("api/ERPAsset/GetERPAsset")]
        public DataTable GetERPAsset()
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetERPAsset";
                cmd.Connection = conn;
                DataSet ds = new DataSet();
                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(ds);
                Tbl = ds.Tables[0];

             
            }
            catch (Exception ex)
            {
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }


        //[HttpPost]
        //[Route("api/ERPAsse/SendMain")]
        //public void SendMainl(List<Equip> list)
        //{
                
        //                #region send email with details

        //                try
        //                {
        //        string emailaddress = list[0].Email;
        //        string customer = list[0].customerid;

        //        MailMessage mail = new MailMessage();
        //                    string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

        //                    string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
        //                    string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
        //                    string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
        //                    string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

        //                    SmtpClient SmtpServer = new SmtpClient(emailserver);

        //                    mail.From = new MailAddress(fromaddress);
        //                    mail.To.Add(emailaddress);
        //                    mail.Subject = "Pricing Enquiry from customer:"+ customer;
        //                    mail.IsBodyHtml = true;

        //        StringBuilder itemsList = new StringBuilder();
        //        DateTime dtime = DateTime.Now;
        //        dtime.AddDays(5);
             
        //        int cnt = 1;
        //        foreach (Equip m in list)
        //        {
        //            itemsList.Append("<tr>");
        //            itemsList.Append("<td>");
        //            itemsList.Append(cnt++);
        //            itemsList.Append("</td>");

        //            itemsList.Append("<td>");
        //            itemsList.Append(m.Name);
        //            itemsList.Append("</td>");

        //            itemsList.Append("<td>");
        //            itemsList.Append(m.des);
        //            itemsList.Append("</td>");

        //            itemsList.Append("<td>");
        //            itemsList.Append(m.qty);
        //            itemsList.Append("</td>");

        //            itemsList.Append("<td>");
        //            itemsList.Append(dtime.ToShortDateString());
        //            itemsList.Append("</td>");
        //            itemsList.Append("</tr>");
        //        }
        //        string verifcodeMail = @"<table>
        //                                <tr>
        //                                    <td>
        //                                        <h3>Tender & sales order management demo</h3>
        //                                        <h4> Pricing Enquiry</h4>
        //                                        <span>Please get back to us with the pricing quotes for below items</span>
        //                                        <table border="+1+@">
        //                                            <tr>
        //                                                <td>
        //                                                    S.No
        //                                                </td>
        //                                                <td>Item name</td>
        //                                                <td>Item description</td>
        //                                                <td>No.Of Units</td>
        //                                                <td>Delivery Date</td>
        //                                            </tr>"+itemsList.ToString()+ @"</table>
        //                                        </td>
        //                                    </tr>
        //                                </table>";


        //                    mail.Body = verifcodeMail;
        //                    //SmtpServer.Port = 465;
        //                    //SmtpServer.Port = 587;
        //                    SmtpServer.Port = Convert.ToInt32(port);
        //                    SmtpServer.UseDefaultCredentials = false;

        //                    SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

        //                    SmtpServer.EnableSsl = true;

        //                    SmtpServer.Send(mail);
                           
        //                }
        //                catch (Exception ex)
        //                {
        //                    //throw ex;
                        
        //                }

        //                //update if email is sent

        //                #endregion send email with details

        //}

        //[HttpPost]
        //[Route("api/ERPAsset/PaySupplier")]
        //public void PaySupplier(PaySupplier ps)
        //{

        //    #region send email with details

        //    try
        //    {
        //        string emailaddress =ps.email;
        //        string customer = ps.customername;

        //        MailMessage mail = new MailMessage();
        //        string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

        //        string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
        //        string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
        //        string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
        //        string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

        //        SmtpClient SmtpServer = new SmtpClient(emailserver);

        //        mail.From = new MailAddress(fromaddress);
        //        mail.To.Add(emailaddress);
        //        mail.Subject = "Payment Invoice:" + customer;
        //        mail.IsBodyHtml = true;
        //        mail.Attachments.Add(new Attachment("D:\\tt.txt"));
        //        StringBuilder itemsList = new StringBuilder();
        //        DateTime dtime = DateTime.Now;
        //        dtime.AddDays(5);

               
        //        string verifcodeMail = @"<table>
        //                                <tr>
        //                                    <td>
        //                                        <h3>Tender & sales order management demo</h3>
        //                                        <h4> Payment Invoice</h4>
        //                                        <span>Please find the attachment of Payment Invoice</span>
        //                                           <p> Thank You,</p>
        //                                            <p> Sales Manager of  TSOM,</p>
        //                                        </td>
        //                                    </tr>
        //                                </table>";


        //        mail.Body = verifcodeMail;
        //        //SmtpServer.Port = 465;
        //        //SmtpServer.Port = 587;
        //        SmtpServer.Port = Convert.ToInt32(port);
        //        SmtpServer.UseDefaultCredentials = false;

        //        SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

        //        SmtpServer.EnableSsl = true;

        //        SmtpServer.Send(mail);

        //    }
        //    catch (Exception ex)
        //    {
        //        //throw ex;

        //    }

        //    //update if email is sent

        //    #endregion send email with details

        //}


    }
}
