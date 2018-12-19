using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using ERPSystem.Models;

namespace ERPSystem.Controllers
{
    public class OrderconfirmationController : ApiController
    {
        [HttpGet]
        [Route("api/Orderconfirmation/getdata")]
        public DataTable OrderConfirmation ()
        {

            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetOrderConfirmation";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;

            }

            return dt;

        }
        [HttpPost]
        [Route("api/OrderConfirmation/savedetails")] 
        public DataTable   OrderConfirmations  (OrderConfi A)
        {
            DataTable dt = new DataTable();

            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelOrderConfirmation";



                SqlParameter sid = new SqlParameter("@Id", SqlDbType.Int);
                sid.Value = A.Id;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@RFQId", SqlDbType.Int);
                rid.Value = A.RFQId;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@CustomerId", SqlDbType.Int);
                rf.Value = A.CustomerId;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@confirmedon", SqlDbType.DateTime);
                sd.Value = A.confirmedon;
                cmd.Parameters.Add(sd);

                SqlParameter dam = new SqlParameter("@commtypeid", SqlDbType.Int);
                dam.Value = A.commtypeid;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@active", SqlDbType.Int);
                ti.Value = A.active;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@isPOSent", SqlDbType.DateTime);
                es.Value = A.isPOSent;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@Posenton", SqlDbType.DateTime);
                ac.Value = A.Posenton;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@RFQConfirmationId", SqlDbType.Int);
                qi.Value = A.RFQConfirmationId;
                cmd.Parameters.Add(qi);

                SqlParameter faa = new SqlParameter("@flag", SqlDbType.VarChar);
                faa.Value = A.flag;
                cmd.Parameters.Add(faa);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {

                throw ex;

            }


            return dt;
        }
    }
}
