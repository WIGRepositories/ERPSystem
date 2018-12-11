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
    public class QuoteResponseController : ApiController
    {
        [Route("api/QuoteResponse/getQuoteResponse")]
        [HttpGet]
        public DataTable getQuoteResponse()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getQuoteResponse";
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
        [Route("api/QuoteResponse/postQuoteResponse")]
        [HttpPost]
        public DataTable postQuoteResponse(QuoteResponse cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spQuoteResponse";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@QuoteResponseID", SqlDbType.Int);
                Gid.Value = cus.QuoteResponseID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                Gid1.Value = cus.RFQDetailID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@ReceivedOn", SqlDbType.DateTime);
                Gid2.Value = cus.ReceivedOn;
                cmd.Parameters.Add(Gid2);


                SqlParameter Gid3= new SqlParameter("@ReceivedFrom", SqlDbType.VarChar);
                Gid3.Value = cus.ReceivedFrom;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@IsReplyReceived", SqlDbType.VarChar);
                Gid4.Value = cus.IsReplyReceived;
                cmd.Parameters.Add(Gid4);

                SqlParameter Gid5 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid5.Value = cus.RFQID;
                cmd.Parameters.Add(Gid5);


                SqlParameter Gid6 = new SqlParameter("@SupplierID", SqlDbType.Int);
                Gid6.Value = cus.SupplierID;
                cmd.Parameters.Add(Gid6);

                SqlParameter Gid7 = new SqlParameter("@UnitPrice", SqlDbType.Money);
                Gid7.Value = cus.UnitPrice;
                cmd.Parameters.Add(Gid7);

                SqlParameter Gid8 = new SqlParameter("@Total", SqlDbType.Money);
                Gid8.Value = cus.Total;
                cmd.Parameters.Add(Gid8);


                SqlParameter Gid9 = new SqlParameter("@CommType", SqlDbType.VarChar);
                Gid9.Value = cus.CommType;
                cmd.Parameters.Add(Gid9);

                SqlParameter Gid10 = new SqlParameter("@Priority", SqlDbType.VarChar);
                Gid10.Value = cus.Priority;
                cmd.Parameters.Add(Gid10);

                SqlParameter Gid12 = new SqlParameter("@IsSelected", SqlDbType.VarChar);
                Gid12.Value = cus.IsSelected;
                cmd.Parameters.Add(Gid12);

               
                SqlParameter Gid14 = new SqlParameter("@SentEmailtoCustomer", SqlDbType.VarChar);
                Gid14.Value = cus.SentEmailtoCustomer;
                cmd.Parameters.Add(Gid14);

                SqlParameter Gid15 = new SqlParameter("@QRID", SqlDbType.Int);
                Gid15.Value = cus.QRID;
                cmd.Parameters.Add(Gid15);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;
        }
    }
}

   
