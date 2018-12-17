using ERPSystem.Models;
using System.Text.RegularExpressions;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.tool.xml;

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
using System.IO;
using HtmlAgilityPack;
using System.Web;

namespace ERPSystem.Controllers
{
    public class ERPAssetController : ApiController
    {
        [HttpPost]
        [Route("api/ERPAsset/RFQtoCustomer")]
        public void RFQtoCustomer(List<Equip> list)
        {
            List<Equip> dd = new List<Equip>();
            string emailaddress = list[0].Email;
            string customer = list[0].customerid;
            var r = DateTime.Now.ToString("yyyyMMddTHHmmss");
            // GeneratePDFdownload(r);

            Document doc = new Document(PageSize.A4);
            var output = new FileStream(r + ".pdf", FileMode.Create);
            var writer = PdfWriter.GetInstance(doc, output);

            BaseFont bfHelvetica = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, false);
            doc.Open();

            PdfPTable table8 = new PdfPTable(2);
            table8.DefaultCell.Border = 0;
            table8.WidthPercentage = 80;


            PdfPCell cell8 = new PdfPCell(new Phrase("Tender and Sales Order Management ", new Font(bfHelvetica, 18, Font.ITALIC, BaseColor.BLUE)));
            cell8.Colspan = 2;
            cell8.Border = 0;
            cell8.HorizontalAlignment = Element.ALIGN_CENTER;
            table8.AddCell(cell8);

            PdfPCell cell9 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell9.Border = PdfPCell.NO_BORDER;
            table8.AddCell(cell9);

            PdfPTable table1 = new PdfPTable(2);
            table1.DefaultCell.Border = 0;
            table1.WidthPercentage = 80;


            PdfPCell cell11 = new PdfPCell();
            cell11.Colspan = 1;
            cell11.Border = 0;
            cell11.AddElement(new Paragraph("To"));
            cell11.AddElement(new Paragraph(customer));
            cell11.AddElement(new Paragraph("Hyderabad,Ranga Reddy"));
            cell11.AddElement(new Paragraph("ZipCode:500089"));
            cell11.VerticalAlignment = Element.ALIGN_LEFT;


            PdfPCell cell12 = new PdfPCell();
            cell12.Colspan = 1;
            cell12.Border = 0;
            cell12.AddElement(new Paragraph("From"));
            cell12.AddElement(new Paragraph("Webingate Solutions Pvt. Ltd."));
            cell12.AddElement(new Paragraph("Gayathri Appartments,#3H"));
            cell12.AddElement(new Paragraph("Mothi Nagar,Near Ameerpet"));
            cell12.AddElement(new Paragraph("Hyderabad."));

            cell12.VerticalAlignment = Element.ALIGN_CENTER;

            PdfPCell cell21 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell21.Border = PdfPCell.NO_BORDER;

            PdfPCell cell22 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell22.Border = PdfPCell.NO_BORDER;

            table1.AddCell(cell11);

            table1.AddCell(cell12);
            table1.AddCell(cell21);
            table1.AddCell(cell22);


            PdfPTable table2 = new PdfPTable(5);

            PdfPCell cellr1 = new PdfPCell();
            cellr1.AddElement(new Paragraph("S No", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr2 = new PdfPCell();
            cellr2.AddElement(new Paragraph("Item Name", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr3 = new PdfPCell();
            cellr3.AddElement(new Paragraph("Quantitiy", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr4 = new PdfPCell();
            cellr4.AddElement(new Paragraph("Per Unit Price", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr5 = new PdfPCell();
            cellr5.AddElement(new Paragraph("Sub Total", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));


            table2.AddCell(cellr1);
            table2.AddCell(cellr2);
            table2.AddCell(cellr3);
            table2.AddCell(cellr4);
            table2.AddCell(cellr5);
            int tt = 1; int itemscost1 = 0; int j = 2;
            //One row addedEquip m in list
            foreach (Equip m in list)
            {

                PdfPCell cellj1 = new PdfPCell();
                cellj1.AddElement(new Paragraph("" + tt));

                PdfPCell cellj2 = new PdfPCell();
                cellj2.AddElement(new Paragraph(m.Name));

                PdfPCell cellj3 = new PdfPCell();
                cellj3.AddElement(new Paragraph("" + m.qty));

                PdfPCell cellj4 = new PdfPCell();
                cellj4.AddElement(new Paragraph("" + m.perunit));


                PdfPCell cellj5 = new PdfPCell();
                cellj5.AddElement(new Paragraph("" + m.Subtotal));

                table2.AddCell(cellj1);
                table2.AddCell(cellj2);
                table2.AddCell(cellj3);
                table2.AddCell(cellj4);
                table2.AddCell(cellj5);

                itemscost1= m.Subtotal;
                j++;
                tt++;
            }

            PdfPCell cell2A = new PdfPCell(table2);
            cell2A.Colspan = 2;

            table1.AddCell(cell2A);

            PdfPCell cell41 = new PdfPCell();
            cell41.Border = 0;

            //cell41.AddElement(new Paragraph("Name : " + "ABC"));

            //cell41.AddElement(new Paragraph("Advance : " + "advance"));

            cell41.VerticalAlignment = Element.ALIGN_LEFT;

            PdfPCell cell42 = new PdfPCell();
            cell42.AddElement(new Paragraph("Total = " + itemscost1));

            //cell42.AddElement(new Paragraph("Balance : " + "3993"));

            cell42.HorizontalAlignment = Element.ALIGN_RIGHT;


            table1.AddCell(cell41);

            table1.AddCell(cell42);


            doc.Add(table8);
            doc.Add(table1);

            doc.Close();

            #region send email with details

            try
            {


                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Payment Invoice:" + customer;
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment("C:\\Program Files (x86)\\IIS Express\\" + r + ".pdf"));
                StringBuilder itemsList = new StringBuilder();

                //int cnt = 1;int itemscost=0;


                //foreach (Equip m in list)
                //{
                //    itemsList.Append("<tr>");
                //    itemsList.Append("<td>");
                //    itemsList.Append(cnt++);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.Name);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.des);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.qty);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.perunit);
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemsList.Append("<td>");
                //    itemsList.Append((m.qty * m.perunit));
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemscost += (m.qty * m.perunit);
                //}

                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Payment Invoice</h4>
                                                <span>Please find the attachment of Payment Invoice</span>
                                                   <p> Thank You,</p>
                                                    <p> Sales Manager of  TSOM,</p>
                                                </td>
                                            </tr>
                                        </table>";



                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }


                table2.AddCell(cellj1);
                table2.AddCell(cellj2);
                table2.AddCell(cellj3);
                table2.AddCell(cellj4);
                table2.AddCell(cellj5);

                itemscost1= m.Subtotal;
                j++;
                tt++;
            }

            PdfPCell cell2A = new PdfPCell(table2);
            cell2A.Colspan = 2;

            table1.AddCell(cell2A);

            PdfPCell cell41 = new PdfPCell();
            cell41.Border = 0;

            //cell41.AddElement(new Paragraph("Name : " + "ABC"));

            //cell41.AddElement(new Paragraph("Advance : " + "advance"));

            cell41.VerticalAlignment = Element.ALIGN_LEFT;

            PdfPCell cell42 = new PdfPCell();
            cell42.AddElement(new Paragraph("Total = " + itemscost1));

            //cell42.AddElement(new Paragraph("Balance : " + "3993"));

            cell42.HorizontalAlignment = Element.ALIGN_RIGHT;


            table1.AddCell(cell41);

            table1.AddCell(cell42);


            doc.Add(table8);
            doc.Add(table1);

            doc.Close();

            #region send email with details

            try
            {


                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Payment Invoice:" + customer;
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment("C:\\Program Files (x86)\\IIS Express\\" + r + ".pdf"));
                StringBuilder itemsList = new StringBuilder();

                //int cnt = 1;int itemscost=0;


                //foreach (Equip m in list)
                //{
                //    itemsList.Append("<tr>");
                //    itemsList.Append("<td>");
                //    itemsList.Append(cnt++);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.ItemName);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.Description);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.qty);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.perunit);
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemsList.Append("<td>");
                //    itemsList.Append((m.qty * m.perunit));
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemscost += (m.qty * m.perunit);
                //}

                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Payment Invoice</h4>
                                                <span>Please find the attachment of Payment Invoice</span>
                                                   <p> Thank You,</p>
                                                    <p> Sales Manager of  TSOM,</p>
                                                </td>
                                            </tr>
                                        </table>";



                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }


        [HttpGet]
        [Route("api/ERPAsset/GetInvertory")]
        public DataTable GetInvertory()
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
                cmd.CommandText = "GetInventory";
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

        // for Send Suppliers
        [HttpPost]
        [Route("api/ERPAsse/SendSampleSupplierQuote")]
        public void SendSampleSupplierQuote(List<Equip> list)
        {

            #region send email with details

            try
            {
                string emailaddress = list[0].Email;
                string customer = list[0].customerid;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Price quote from supplier:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);
                
                int cnt = 1;
                foreach (Equip m in list)
                {
                    itemsList.Append("<tr>");

                    itemsList.Append("<td>");
                    itemsList.Append(cnt++);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.ItemName);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.Description);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.qty);
                    itemsList.Append("</td>");

                    int subtotal = m.qty * m.perunit;

                    itemsList.Append("<td>");
                    itemsList.Append(m.perunit);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(subtotal);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.tax);
                    itemsList.Append("</td>");                   

                    itemsList.Append("<td>");
                    itemsList.Append(m.dis);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.qty);
                    itemsList.Append("</td>");

                    int total = subtotal + m.tax + m.dis;

                    itemsList.Append("<td>");
                    itemsList.Append(total);
                    itemsList.Append("</td>");

                    itemsList.Append("</tr>");
                }
                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4>Supplier Pricing quote</h4>
                                                <span>Please check the pricing quotes for below items</span>
                                                <table border=" + 1 + @">
                                                    <tr>
                                                        <td>
                                                            S.No
                                                        </td>
                                                        <td>Item name</td>
                                                        <td>Item description</td>
                                                        <td>No.Of Units</td>
                                                        <td>Perunit price</td>
                                                        <td>Sub Total</td>
                                                        <td>Tax</td>
                                                        <td>Discount</td>
                                                        <td>Total</td>                                                        
                                                    </tr>" + itemsList.ToString() + @"</table>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        // for Send Suppliers
        [HttpPost]
        [Route("api/ERPAsse/SendSuppliers")]
        public void SendSuppliers(List<Equip> list)
        {

            #region send email with details

            try
            {
                string emailaddress = list[0].Email;
                string customer = list[0].customerid;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Pricing Enquiry from customer:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);

                int cnt = 1;
                foreach (Equip m in list)
                {
                    itemsList.Append("<tr>");
                    itemsList.Append("<td>");
                    itemsList.Append(cnt++);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.ItemName);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.Description);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.qty);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(dtime.ToShortDateString());
                    itemsList.Append("</td>");
                    itemsList.Append("</tr>");
                }
                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Pricing Enquiry</h4>
                                                <span>Please get back to us with the pricing quotes for below items</span>
                                                <table border=" + 1 + @">
                                                    <tr>
                                                        <td>
                                                            S.No
                                                        </td>
                                                        <td>Item name</td>
                                                        <td>Item description</td>
                                                        <td>No.Of Units</td>
                                                        <td>Delivery Date</td>
                                                    </tr>" + itemsList.ToString() + @"</table>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        [HttpPost]
        [Route("api/ERPAsse/RFQSupplieremail")]
        public void RFQSupplieremail(List<Equip> list)
        {

            #region send email with details

            try
            {
                string emailaddress = list[0].Email;
                string customer = list[0].Suppiername;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Pricing Enquiry from customer:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);

                int cnt = 1;
                foreach (Equip m in list)
                {
                    itemsList.Append("<tr>");
                    itemsList.Append("<td>");
                    itemsList.Append(cnt++);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.ItemName);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.Description);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.qty);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(dtime.ToShortDateString());
                    itemsList.Append("</td>");
                    itemsList.Append("</tr>");
                }
                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Pricing Enquiry</h4>
                                                <span>Please get back to us with the pricing quotes for below items</span>
                                                <table border=" + 1 + @">
                                                    <tr>
                                                        <td>
                                                            S.No
                                                        </td>
                                                        <td>Item name</td>
                                                        <td>Item description</td>
                                                        <td>No.Of Units</td>
                                                        <td>Delivery Date</td>
                                                    </tr>" + itemsList.ToString() + @"</table>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        [HttpPost]
        [Route("api/ERPAsse/SendMain")]
        public void SendMainl(List<Equip> list)
        {

            #region send email with details

            try
            {
                string emailaddress = list[0].Email;
                string customer = list[0].customerid;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Pricing Enquiry from customer:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);

                int cnt = 1;
                foreach (Equip m in list)
                {
                    itemsList.Append("<tr>");
                    itemsList.Append("<td>");
                    itemsList.Append(cnt++);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.ItemName);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.Description);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(m.qty);
                    itemsList.Append("</td>");

                    itemsList.Append("<td>");
                    itemsList.Append(dtime.ToShortDateString());
                    itemsList.Append("</td>");
                    itemsList.Append("</tr>");
                }
                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Pricing Enquiry</h4>
                                                <span>Please get back to us with the pricing quotes for below items</span>
                                                <table border=" + 1 + @">
                                                    <tr>
                                                        <td>
                                                            S.No
                                                        </td>
                                                        <td>Item name</td>
                                                        <td>Item description</td>
                                                        <td>No.Of Units</td>
                                                        <td>Delivery Date</td>
                                                    </tr>" + itemsList.ToString() + @"</table>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        [HttpPost]
        [Route("api/ERPAsset/PaySupplier")]
        public void PaySupplier(PaySupplier ps)
        {
            #region send email with details

            try
            {
                string emailaddress = ps.email;
                string customer = ps.customername;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Payment Invoice:" + customer;
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment("D:\\tt.txt"));
                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);


                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Payment Invoice</h4>
                                                <span>Please find the attachment of Payment Invoice</span>
                                                   <p> Thank You,</p>
                                                    <p> Sales Manager of  TSOM,</p>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details
        }


        [HttpPost]
        [Route("api/ERPAsset/PaySupplierInvoicePdf")]
        public void InvoicePdf(List<Equip> list)
        {
            List<Equip> dd = new List<Equip>();
            string emailaddress = list[0].Email;
            string customer = list[0].customerid;
            var r = DateTime.Now.ToString("yyyyMMddTHHmmss");
            // GeneratePDFdownload(r);

            Document doc = new Document(PageSize.A4);
            var output = new FileStream(r + ".pdf", FileMode.Create);
            var writer = PdfWriter.GetInstance(doc, output);

            BaseFont bfHelvetica = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, false);
            doc.Open();

            PdfPTable table8 = new PdfPTable(2);
            table8.DefaultCell.Border = 0;
            table8.WidthPercentage = 80;


            PdfPCell cell8 = new PdfPCell(new Phrase("Tender and Sales Order Management ", new Font(bfHelvetica, 18, Font.ITALIC, BaseColor.BLUE)));
            cell8.Colspan = 2;
            cell8.Border = 0;
            cell8.HorizontalAlignment = Element.ALIGN_CENTER;
            table8.AddCell(cell8);

            PdfPCell cell9 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell9.Border = PdfPCell.NO_BORDER;
            table8.AddCell(cell9);

            PdfPTable table1 = new PdfPTable(2);
            table1.DefaultCell.Border = 0;
            table1.WidthPercentage = 80;


            PdfPCell cell11 = new PdfPCell();
            cell11.Colspan = 1;
            cell11.Border = 0;
            cell11.AddElement(new Paragraph("To"));
            cell11.AddElement(new Paragraph(customer));
            cell11.AddElement(new Paragraph("Hyderabad,Ranga Reddy"));
            cell11.AddElement(new Paragraph("ZipCode:500089"));
            cell11.VerticalAlignment = Element.ALIGN_LEFT;


            PdfPCell cell12 = new PdfPCell();
            cell12.Colspan = 1;
            cell12.Border = 0;
            cell12.AddElement(new Paragraph("From"));
            cell12.AddElement(new Paragraph("Webingate Solutions Pvt. Ltd."));
            cell12.AddElement(new Paragraph("Gayathri Appartments,#3H"));
            cell12.AddElement(new Paragraph("Mothi Nagar,Near Ameerpet"));
            cell12.AddElement(new Paragraph("Hyderabad."));

            cell12.VerticalAlignment = Element.ALIGN_CENTER;

            PdfPCell cell21 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell21.Border = PdfPCell.NO_BORDER;

            PdfPCell cell22 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell22.Border = PdfPCell.NO_BORDER;

            table1.AddCell(cell11);

            table1.AddCell(cell12);
            table1.AddCell(cell21);
            table1.AddCell(cell22);


            PdfPTable table2 = new PdfPTable(5);

            PdfPCell cellr1 = new PdfPCell();
            cellr1.AddElement(new Paragraph("S No", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr2 = new PdfPCell();
            cellr2.AddElement(new Paragraph("Item Name", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr3 = new PdfPCell();
            cellr3.AddElement(new Paragraph("Quantitiy", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr4 = new PdfPCell();
            cellr4.AddElement(new Paragraph("Per Unit Price", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr5 = new PdfPCell();
            cellr5.AddElement(new Paragraph("Sub Total", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));


            table2.AddCell(cellr1);
            table2.AddCell(cellr2);
            table2.AddCell(cellr3);
            table2.AddCell(cellr4);
            table2.AddCell(cellr5);
            int tt = 1; int itemscost1 = 0; int j = 2;
            //One row addedEquip m in list
            foreach (Equip m in list)
            {

                PdfPCell cellj1 = new PdfPCell();
                cellj1.AddElement(new Paragraph("" + tt));

                PdfPCell cellj2 = new PdfPCell();
                cellj2.AddElement(new Paragraph(m.ItemName));

                PdfPCell cellj3 = new PdfPCell();
                cellj3.AddElement(new Paragraph("" + m.qty));

                PdfPCell cellj4 = new PdfPCell();
                cellj4.AddElement(new Paragraph("" + m.perunit));


                PdfPCell cellj5 = new PdfPCell();
                cellj5.AddElement(new Paragraph("" + (m.qty * m.perunit)));

                table2.AddCell(cellj1);
                table2.AddCell(cellj2);
                table2.AddCell(cellj3);
                table2.AddCell(cellj4);
                table2.AddCell(cellj5);

                itemscost1 += (m.qty * m.perunit);
                j++;
                tt++;
            }

            PdfPCell cell2A = new PdfPCell(table2);
            cell2A.Colspan = 2;

            table1.AddCell(cell2A);

            PdfPCell cell41 = new PdfPCell();
            cell41.Border = 0;

            //cell41.AddElement(new Paragraph("Name : " + "ABC"));

            //cell41.AddElement(new Paragraph("Advance : " + "advance"));

            cell41.VerticalAlignment = Element.ALIGN_LEFT;

            PdfPCell cell42 = new PdfPCell();
            cell42.AddElement(new Paragraph("Total = " + itemscost1));

            //cell42.AddElement(new Paragraph("Balance : " + "3993"));

            cell42.HorizontalAlignment = Element.ALIGN_RIGHT;


            table1.AddCell(cell41);

            table1.AddCell(cell42);


            doc.Add(table8);
            doc.Add(table1);

            doc.Close();

            #region send email with details

            try
            {


                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Payment Invoice:" + customer;
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment("C:\\Program Files (x86)\\IIS Express\\" + r + ".pdf"));
                StringBuilder itemsList = new StringBuilder();

                //int cnt = 1;int itemscost=0;


                //foreach (Equip m in list)
                //{
                //    itemsList.Append("<tr>");
                //    itemsList.Append("<td>");
                //    itemsList.Append(cnt++);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.ItemName);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.Description);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.qty);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.perunit);
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemsList.Append("<td>");
                //    itemsList.Append((m.qty * m.perunit));
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemscost += (m.qty * m.perunit);
                //}

                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Payment Invoice</h4>
                                                <span>Please find the attachment of Payment Invoice</span>
                                                   <p> Thank You,</p>
                                                    <p> Sales Manager of  TSOM,</p>
                                                </td>
                                            </tr>
                                        </table>";



                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }


        [HttpPost]
        [Route("api/ERPAsse/RequestInvoice")]
        public void RequestInvoice(PaySupplier p)
        {

            #region send email with details

            try
            {
                string emailaddress = p.email;
                string customer = p.customername;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Request for Invoice:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);

                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Payment Invoice</h4>
                                                <span>"+p.des+ @"</span>
                                                <p>Regards,</p>
                                                <p>Tender Management Admin</p>
                                                </td>
                                            </tr>
                                        </table>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        [HttpPost]
        [Route("api/ERPAsse/finalquote")]
        public void finalquote(List<Equip> list)
        {

            List<Equip> dd = new List<Equip>();
            string emailaddress = list[0].Email;
            string customer = list[0].customerid;
            var r = DateTime.Now.ToString("yyyyMMddTHHmmss");
            // GeneratePDFdownload(r);

            Document doc = new Document(PageSize.A4);
            var output = new FileStream(r + ".pdf", FileMode.Create);
            var writer = PdfWriter.GetInstance(doc, output);

            BaseFont bfHelvetica = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, false);
            doc.Open();

            PdfPTable table8 = new PdfPTable(2);
            table8.DefaultCell.Border = 0;
            table8.WidthPercentage = 80;


            PdfPCell cell8 = new PdfPCell(new Phrase("Tender and Sales Order Management ", new Font(bfHelvetica, 18, Font.ITALIC, BaseColor.BLUE)));
            cell8.Colspan = 2;
            cell8.Border = 0;
            cell8.HorizontalAlignment = Element.ALIGN_CENTER;
            table8.AddCell(cell8);

            PdfPCell cell9 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell9.Border = PdfPCell.NO_BORDER;
            table8.AddCell(cell9);

            PdfPTable table1 = new PdfPTable(2);
            table1.DefaultCell.Border = 0;
            table1.WidthPercentage = 80;


            PdfPCell cell11 = new PdfPCell();
            cell11.Colspan = 1;
            cell11.Border = 0;
            cell11.AddElement(new Paragraph("To"));
            cell11.AddElement(new Paragraph(customer));
            cell11.AddElement(new Paragraph("Hyderabad,Ranga Reddy"));
            cell11.AddElement(new Paragraph("ZipCode:500089"));
            cell11.VerticalAlignment = Element.ALIGN_LEFT;


            PdfPCell cell12 = new PdfPCell();
            cell12.Colspan = 1;
            cell12.Border = 0;
            cell12.AddElement(new Paragraph("From"));
            cell12.AddElement(new Paragraph("Webingate Solutions Pvt. Ltd."));
            cell12.AddElement(new Paragraph("Gayathri Appartments,#3H"));
            cell12.AddElement(new Paragraph("Mothi Nagar,Near Ameerpet"));
            cell12.AddElement(new Paragraph("Hyderabad."));

            cell12.VerticalAlignment = Element.ALIGN_CENTER;

            PdfPCell cell21 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell21.Border = PdfPCell.NO_BORDER;

            PdfPCell cell22 = new PdfPCell(new Phrase(Chunk.NEWLINE));
            cell22.Border = PdfPCell.NO_BORDER;

            table1.AddCell(cell11);

            table1.AddCell(cell12);
            table1.AddCell(cell21);
            table1.AddCell(cell22);


            PdfPTable table2 = new PdfPTable(5);

            PdfPCell cellr1 = new PdfPCell();
            cellr1.AddElement(new Paragraph("S No", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr2 = new PdfPCell();
            cellr2.AddElement(new Paragraph("Item Name", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr3 = new PdfPCell();
            cellr3.AddElement(new Paragraph("Quantitiy", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr4 = new PdfPCell();
            cellr4.AddElement(new Paragraph("Per Unit Price", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));

            PdfPCell cellr5 = new PdfPCell();
            cellr5.AddElement(new Paragraph("Sub Total", new Font(bfHelvetica, 12, Font.ITALIC, BaseColor.BLACK)));


            table2.AddCell(cellr1);
            table2.AddCell(cellr2);
            table2.AddCell(cellr3);
            table2.AddCell(cellr4);
            table2.AddCell(cellr5);
            int tt = 1; int itemscost1 = 0; int j = 2;
            //One row addedEquip m in list
            foreach (Equip m in list)
            {

                PdfPCell cellj1 = new PdfPCell();
                cellj1.AddElement(new Paragraph("" + tt));

                PdfPCell cellj2 = new PdfPCell();
                cellj2.AddElement(new Paragraph(m.ItemName));

                PdfPCell cellj3 = new PdfPCell();
                cellj3.AddElement(new Paragraph("" + m.qty));

                PdfPCell cellj4 = new PdfPCell();
                cellj4.AddElement(new Paragraph("" + m.perunit));


                PdfPCell cellj5 = new PdfPCell();
                cellj5.AddElement(new Paragraph("" + (m.qty * m.perunit)));

                table2.AddCell(cellj1);
                table2.AddCell(cellj2);
                table2.AddCell(cellj3);
                table2.AddCell(cellj4);
                table2.AddCell(cellj5);

                itemscost1 += (m.qty * m.perunit);
                j++;
                tt++;
            }

            PdfPCell cell2A = new PdfPCell(table2);
            cell2A.Colspan = 2;

            table1.AddCell(cell2A);

            PdfPCell cell41 = new PdfPCell();
            cell41.Border = 0;

            //cell41.AddElement(new Paragraph("Name : " + "ABC"));

            //cell41.AddElement(new Paragraph("Advance : " + "advance"));

            cell41.VerticalAlignment = Element.ALIGN_LEFT;

            PdfPCell cell42 = new PdfPCell();
            cell42.AddElement(new Paragraph("Total = " + itemscost1));

            //cell42.AddElement(new Paragraph("Balance : " + "3993"));

            cell42.HorizontalAlignment = Element.ALIGN_RIGHT;


            table1.AddCell(cell41);

            table1.AddCell(cell42);


            doc.Add(table8);
            doc.Add(table1);

            doc.Close();

            #region send email with details

            try
            {


                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Final Quotation for Product:" + customer;
                mail.IsBodyHtml = true;
                mail.Attachments.Add(new Attachment("C:\\Program Files (x86)\\IIS Express\\" + r + ".pdf"));
                StringBuilder itemsList = new StringBuilder();

                //int cnt = 1;int itemscost=0;


                //foreach (Equip m in list)
                //{
                //    itemsList.Append("<tr>");
                //    itemsList.Append("<td>");
                //    itemsList.Append(cnt++);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.ItemName);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.Description);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.qty);
                //    itemsList.Append("</td>");

                //    itemsList.Append("<td>");
                //    itemsList.Append(m.perunit);
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemsList.Append("<td>");
                //    itemsList.Append((m.qty * m.perunit));
                //    itemsList.Append("</td>");
                //    itemsList.Append("</tr>");

                //    itemscost += (m.qty * m.perunit);
                //}

                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4> Final Quote for Customer</h4>
                                                <span>Please get back us  as soon as possible</span>
                                                   <p> Thank You,</p>
                                                    <p> Sales Manager of  TSOM,</p>
                                                </td>
                                            </tr>
                                        </table>";



                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }

        // for Send Suppliers
        [HttpPost]
        [Route("api/ERPAsse/SendCustomerConfirmationEmail")]
        public void SendCustomerConfirmationEmail(Equip list)
        {

            #region send email with details

            try
            {
                string emailaddress = list.Email;
                string customer = list.customerid;

                MailMessage mail = new MailMessage();
                string emailserver = System.Configuration.ConfigurationManager.AppSettings["emailserver"].ToString();

                string eusername = System.Configuration.ConfigurationManager.AppSettings["username"].ToString();
                string pwd = System.Configuration.ConfigurationManager.AppSettings["password"].ToString();
                string fromaddress = System.Configuration.ConfigurationManager.AppSettings["fromaddress"].ToString();
                string port = System.Configuration.ConfigurationManager.AppSettings["port"].ToString();

                SmtpClient SmtpServer = new SmtpClient(emailserver);

                mail.From = new MailAddress(fromaddress);
                mail.To.Add(emailaddress);
                mail.Subject = "Order confirmation from customer:" + customer;
                mail.IsBodyHtml = true;

                StringBuilder itemsList = new StringBuilder();
                DateTime dtime = DateTime.Now;
                dtime.AddDays(5);

                int cnt = 1;
                
                string verifcodeMail = @"<table>
                                        <tr>
                                            <td>
                                                <h3>Tender & sales order management demo</h3>
                                                <h4>Customer order confirmation</h4>
                                                <span>"+ list.body+ "</span>";


                mail.Body = verifcodeMail;
                //SmtpServer.Port = 465;
                //SmtpServer.Port = 587;
                SmtpServer.Port = Convert.ToInt32(port);
                SmtpServer.UseDefaultCredentials = false;

                SmtpServer.Credentials = new System.Net.NetworkCredential(eusername, pwd);

                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                //throw ex;

            }

            //update if email is sent

            #endregion send email with details

        }
    }

}
  

