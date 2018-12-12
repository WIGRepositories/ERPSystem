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
    public class RFQStaffController : ApiController
    {

        [Route("api/RFQStaff/getRFQStaff")]
        [HttpGet]
        public DataTable getRFQStaff()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getRFQStaff";
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
        [Route("api/RFQStaff/postRFQStaff")]
        [HttpPost]
        public DataTable postRFQStaff(RFQStaff cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spRFQStaff";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@RFQStaffID", SqlDbType.Int);
                Gid.Value = cus.RFQStaffID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid1.Value = cus.RFQID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                Gid2.Value = cus.RFQDetailID;
                cmd.Parameters.Add(Gid2);


                SqlParameter Gid3 = new SqlParameter("@UserID", SqlDbType.Int);
                Gid3.Value = cus.UserID;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@UserType", SqlDbType.VarChar);
                Gid4.Value = cus.UserType;
                cmd.Parameters.Add(Gid4);

                SqlParameter Gid5 = new SqlParameter("@Active", SqlDbType.Int);
                Gid5.Value = cus.Active;
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
    

