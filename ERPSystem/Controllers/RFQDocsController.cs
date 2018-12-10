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
    public class RFQDocsController : ApiController
    {
        [Route("api/RFQDocs/getRFQDocs")]
        [HttpGet]
        public DataTable getRFQDocs()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spRFQDocs1";
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
        [Route("api/RFQDocs/postRFQDocs")]
        [HttpPost]
        public DataTable postRFQDocs(RFQDocs cus)
        {

            DataTable dt = new DataTable();
           
            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spRFQDocs";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@RFQDocsID", SqlDbType.Int);
                Gid.Value = cus.RFQDocsID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@DocId", SqlDbType.Int);
                Gid1.Value = cus.DocId;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@RFQId", SqlDbType.Int);
                Gid2.Value = cus.RFQId;
                cmd.Parameters.Add(Gid2);

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
