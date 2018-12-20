using ERPSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ERPSystem.Controllers
{
    public class InvoiceDetailsController : ApiController
    {
        [HttpGet]
        [Route("api/InvoiceDetails/getInvoiceDetails")]
        public DataTable getInvoiceDetails()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getInvoiceDetails";
                cmd.Connection = conn;

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);



            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;
        }


        [HttpPost]
        [Route("api/InvoiceDetails/saveInvoiceDetails")]
        public DataTable saveInvoiceDetails(InvoiceDetails cus)
        {

            DataTable dt = new DataTable();

            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdInvoiceDetails";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@POId", SqlDbType.Int);
                Gid.Value = cus.POId;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQItemId", SqlDbType.Int);
                Gid1.Value = cus.RFQItemId;
                cmd.Parameters.Add(Gid1);

                SqlParameter Add1 = new SqlParameter("@NoOfUnits", SqlDbType.Int);
                Add1.Value = cus.NoOfUnits;
                cmd.Parameters.Add(Add1);
                SqlParameter Add2 = new SqlParameter("@UnitPrice", SqlDbType.Decimal);
                Add2.Value = cus.UnitPrice;
                cmd.Parameters.Add(Add2);

                SqlParameter phone = new SqlParameter("@charges", SqlDbType.Decimal);
                phone.Value = cus.charges;
                cmd.Parameters.Add(phone);

                SqlParameter llid = new SqlParameter("@discounts", SqlDbType.Decimal);
                llid.Value = cus.discounts;
                cmd.Parameters.Add(llid);

                SqlParameter Gid3 = new SqlParameter("@subtotal", SqlDbType.Decimal);
                Gid3.Value = cus.subtotal;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@Total", SqlDbType.Decimal);
                Gid4.Value = cus.Total;
                cmd.Parameters.Add(Gid4);


                SqlParameter Gid5 = new SqlParameter("@flag", SqlDbType.VarChar,50);
                Gid5.Value = cus.flag;
                cmd.Parameters.Add(Gid5);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                //Logger.Trace(LogCategory.WebApp, "InsUpdCustomer stored procedure is executed successfully", LogLevel.Information, null);


            }
            catch (Exception ex)
            {

                throw ex;
            }
            return dt;
        }
    }
}

   

      