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
    public class OrderConfirmationController : ApiController
    {
        [Route("api/OrderConfirmation/getOrderConfirmation")]
        [HttpGet]
        public DataTable getOrderConfirmation()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getOrderConfirmation";
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
        [Route("api/OrderConfirmation/postOrderConfirmation")]
        [HttpPost]
        public DataTable postOrderConfirmation(OrderConfirmation cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spOrderConfirmation";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@OrderConfirmationID", SqlDbType.Int);
                Gid.Value = cus.OrderConfirmationID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid1.Value = cus.RFQID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@CustomerID", SqlDbType.Int);
                Gid2.Value = cus.CustomerID;
                cmd.Parameters.Add(Gid2);

                SqlParameter Gid3 = new SqlParameter("@ConfirmedOn", SqlDbType.DateTime);
                Gid3.Value = cus.ConfirmedOn;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid5 = new SqlParameter("@CommType", SqlDbType.VarChar);
                Gid5.Value = cus.CommType;
                cmd.Parameters.Add(Gid5);

                SqlParameter Gid6 = new SqlParameter("@Active", SqlDbType.Int);
                Gid6.Value = cus.Active;
                cmd.Parameters.Add(Gid6);


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
