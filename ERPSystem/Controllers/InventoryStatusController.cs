using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ERPSystem.Controllers.DBScripts
{
    public class InventoryStatusController : ApiController
    {

        [HttpGet]
        [Route("api/InventoryStatus/GetStatus")]
        public DataTable Getitems()
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
                cmd.CommandText = "GetItems";
                cmd.Connection = conn;

                //SqlParameter mid = new SqlParameter("@Id", SqlDbType.Int);
                //mid.Value = customerId;
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
    }
}
