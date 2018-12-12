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
    public class RFQEstimationController : ApiController
    {
        [Route("api/RFQEstimation/getRFQEstimation")]
        [HttpGet]
        public DataTable getRFQEstimation()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getRFQEstimation";
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
        [Route("api/RFQEstimation/postRFQEstimation")]
        [HttpPost]
        public DataTable postRFQEstimation(RFQEstimation cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spRFQEstimation";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@RFQEstimationID", SqlDbType.Int);
                Gid.Value = cus.RFQEstimationID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid1.Value = cus.RFQID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                Gid2.Value = cus.RFQDetailID;
                cmd.Parameters.Add(Gid2);


                SqlParameter Gid3 = new SqlParameter("@DocID", SqlDbType.Int);
                Gid3.Value = cus.DocID;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@QuoteResponseID", SqlDbType.Int);
                Gid4.Value = cus.QuoteResponseID;
                cmd.Parameters.Add(Gid4);

                SqlParameter Gid6 = new SqlParameter("@ItemPricingID", SqlDbType.Int);
                Gid6.Value = cus.ItemPricingID;
                cmd.Parameters.Add(Gid6);

                SqlParameter Gid5 = new SqlParameter("@CustomerID", SqlDbType.Int);
                Gid5.Value = cus.CustomerID;
                cmd.Parameters.Add(Gid5);


                

              

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


