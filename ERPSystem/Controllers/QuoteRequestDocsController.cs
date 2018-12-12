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
    public class QuoteRequestDocsController : ApiController
    {
        [Route("api/QuoteRequestDocs/getQuoteRequestDoc")]
        [HttpGet]
        public DataTable getQuoteRequestDoc()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getQuoteRequestDocs";
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
        [Route("api/QuoteRequestDocs/postQuoteRequestDoc")]
        [HttpPost]
        public DataTable postQuoteRequestDoc(QuoteRequestDoc cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spQuoteRequestDocs";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@QRDocsID", SqlDbType.Int);
                Gid.Value = cus.QRDocsID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@DocID", SqlDbType.Int);
                Gid1.Value = cus.DocId;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@QRID", SqlDbType.Int);
                Gid2.Value = cus.QRID;
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
