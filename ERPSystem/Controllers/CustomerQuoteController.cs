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
    public class CustomerQuoteController : ApiController
    {
        [Route("api/CustomerQuote/getCustomerQuote")]
        [HttpGet]
        public DataTable getCustomerQuote()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getCustomerQuote";
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
        [Route("api/CustomerQuote/postCustomerQuote")]
        [HttpPost]
        public DataTable postCustomerQuote(CustomerQuote cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spCustomerQuote";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@CQuoteID", SqlDbType.Int);
                Gid.Value = cus.CQuoteID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@CustomerID", SqlDbType.Int);
                Gid1.Value = cus.CustomerID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid2.Value = cus.RFQID;
                cmd.Parameters.Add(Gid2);


                SqlParameter Gid3 = new SqlParameter("@QuoteResponseID", SqlDbType.Int);
                Gid3.Value = cus.QuoteResponseID;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@DocID", SqlDbType.Int);
                Gid4.Value = cus.DocID;
                cmd.Parameters.Add(Gid4);

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
