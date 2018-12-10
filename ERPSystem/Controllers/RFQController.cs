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
    public class RFQController : ApiController
    {
        [HttpGet]
        [Route("api/RFQ/GetRFQ")]
        public DataTable GetRFQ()
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQ";
                cmd.Connection = conn;

                //SqlParameter mid = new SqlParameter("@modelId", SqlDbType.Int);
                //mid.Value = modelId;
                //cmd.Parameters.Add(mid);

                //SqlParameter lid = new SqlParameter("@locationId", SqlDbType.Int);
                //lid.Value = locationId;
                //cmd.Parameters.Add(lid);

               
                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetAssets() procedure is loaded", LogLevel.Information, null);
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }


        [HttpGet]
        [Route("api/RFQ/GetRFQPersonnal")]
        public DataTable GetRFQPersonnal(int customerId)
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQPersonnal";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@Id", SqlDbType.Int);
                mid.Value = customerId;
                cmd.Parameters.Add(mid);

                //SqlParameter lid = new SqlParameter("@locationId", SqlDbType.Int);
                //lid.Value = locationId;
                //cmd.Parameters.Add(lid);


                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetAssets() procedure is loaded", LogLevel.Information, null);
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }

        [HttpPost]
        [Route("api/RFQ/SaveItemsList")]
        public DataTable SaveItemsList(RFQItems a)
        {
            DataTable dt = new DataTable();
            //connect to database
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelEESAsset";
                cmd.Connection = conn;
                conn.Open();
                //  @name varchar(50),@desc varchar(250)=null,@assettypeid int,@parentid int=null
                //  ,@rootassetid int=-1,@change char(1),@id int=null,@assetModelId int

                SqlParameter Gid = new SqlParameter("@flag", SqlDbType.VarChar, 50);
                Gid.Value = a.flag;
                cmd.Parameters.Add(Gid);

                SqlParameter loggedinUserId = new SqlParameter("@Id", SqlDbType.Int);
                loggedinUserId.Value = a.Id;
                cmd.Parameters.Add(loggedinUserId);

                SqlParameter desc = new SqlParameter("@RFQId", SqlDbType.Int);
                desc.Value = a.RFQId;
                cmd.Parameters.Add(desc);

                SqlParameter assettypeid = new SqlParameter("@AssetId", SqlDbType.Int);
                assettypeid.Value = a.AssetId;
                cmd.Parameters.Add(assettypeid);


                if (a.UserName != null)
                {
                    SqlParameter parentid = new SqlParameter("@UserName", SqlDbType.VarChar);
                    parentid.Value = a.UserName;
                    cmd.Parameters.Add(parentid);
                }

                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);                        
            }
            catch (Exception ex)
            {                
               throw ex;               
            }
            return dt;
        }
    }
}
