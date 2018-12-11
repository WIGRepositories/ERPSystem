
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
    public class DocumentsController : ApiController
    {
        private DataTable dt;

        [HttpGet]
        [Route("api/Documents/GetDocuments")]
        public DataTable getDocuments()
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection conn = new SqlConnection();
                
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getDocuments";
                cmd.Connection = conn;
                DataSet ds = new DataSet();
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
        [Route("api/Documents/postDocuments")]
        public DataTable postDocuments(Documents doc)
        {

            DataTable dt = new DataTable();


            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spDocuments";
                cmd.Connection = conn;
                conn.Open();

                SqlParameter Gid = new SqlParameter("@DocID", SqlDbType.Int);
                Gid.Value = doc.DocID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@Type", SqlDbType.VarChar);
                Gid1.Value = doc.Type;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@Extension", SqlDbType.VarChar);
                Gid2.Value = doc.Extension;
                cmd.Parameters.Add(Gid2);

                SqlParameter Gid3 = new SqlParameter("@Content", SqlDbType.VarChar);
                Gid3.Value = doc.Content;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@Date", SqlDbType.Date);
                Gid4.Value = doc.Date;
                cmd.Parameters.Add(Gid4);

                SqlParameter Gid5 = new SqlParameter("@Time", SqlDbType.Time);
                Gid5.Value = doc.Time;
                cmd.Parameters.Add(Gid5);


                SqlParameter Gid6 = new SqlParameter("@UploadBy", SqlDbType.VarChar);
                Gid6.Value = doc.UploadBy;
                cmd.Parameters.Add(Gid6);


                SqlParameter Gid7 = new SqlParameter("@LastUpdatedOn", SqlDbType.DateTime);
                Gid7.Value = doc.LastUpdatedOn;
                cmd.Parameters.Add(Gid7);

            
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
            }
            catch(Exception ex)
            {
                throw ex;
            }
              
                return dt;
             }

    
    }
}
