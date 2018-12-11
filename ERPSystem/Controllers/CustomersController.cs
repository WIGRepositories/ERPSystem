using ERPSystem;
using ERPSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Tracing;

namespace ERPSystem.Controllers
{
   public class CustomersController : ApiController
    {
       [Route("api/Customers/getCustomers")]
       [HttpGet]
       public DataTable getCustomers()
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
               cmd.CommandText = "getCustomer";
               cmd.Connection = conn;
               DataSet ds = new DataSet();
               SqlDataAdapter db = new SqlDataAdapter(cmd);
               db.Fill(ds);
               Tbl = ds.Tables[0];


               //Logger.Trace(LogCategory.WebApp, "DataTable in getCustomers() procedure is loaded", LogLevel.Information, null);
           }
           catch (Exception ex)
           {
                throw ex;
               //Logger.Error(ex, LogCategory.WebApp, "An error occured in getCustomers() procedure", LogLevel.Error, null);
           }
           // int found = 0;
           return Tbl;
       }
       [HttpPost]
       [Route("api/Customers/ postCustomers")]
       public HttpResponseMessage postCustomers(Customers cus)
       {

            SqlConnection conn = new SqlConnection();

            try
           {
                
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
               //@Client varchar(150),@Contact varchar(100),@Email varchar(50),@PhoneNo varchar(15),@Active int,@ContactRole varchar(100),@ServiceDescription varchar(100)
               //,@PTSPOCId int,@flag char,@ID int=null

               SqlCommand cmd = new SqlCommand();
               cmd.CommandType = CommandType.StoredProcedure;
               cmd.CommandText = "spCustomer";
               cmd.Connection = conn;
               conn.Open();
               SqlParameter Gid = new SqlParameter("@CustomerID", SqlDbType.Int);
               Gid.Value = cus.CustomerID;
               cmd.Parameters.Add(Gid);

               SqlParameter Gid1 = new SqlParameter("@CustomerName", SqlDbType.VarChar);
               Gid1.Value = cus.CustomerName;
               cmd.Parameters.Add(Gid1);

               SqlParameter Gid2 = new SqlParameter("@CustomerCode", SqlDbType.VarChar);
               Gid2.Value = cus.CustomerCode;
               cmd.Parameters.Add(Gid2);

               SqlParameter Gid3 = new SqlParameter("@CustomerAddress", SqlDbType.VarChar);
                Gid3.Value = cus.CustomerAddress;
               cmd.Parameters.Add(Gid3);

               SqlParameter Gid4 = new SqlParameter("@CustomerContact1", SqlDbType.VarChar);
                Gid4.Value =  cus.CustomerContact1;
               cmd.Parameters.Add(Gid4);

               SqlParameter Gid5 = new SqlParameter("@CustomerContact2", SqlDbType.VarChar);
               Gid5.Value = cus.CustomerContact2;
               cmd.Parameters.Add(Gid5);

               SqlParameter Gid6 = new SqlParameter("@CustomerEmail", SqlDbType.VarChar);
               Gid6.Value = cus.CustomerEmail;
               cmd.Parameters.Add(Gid6);
               
               SqlParameter Gid7 = new SqlParameter("@Active", SqlDbType.Int);
                Gid7.Value = cus.Active;
               cmd.Parameters.Add(Gid7);

            
               cmd.ExecuteScalar();
               conn.Close();

               //Logger.Trace(LogCategory.WebApp, "InsUpdCustomer stored procedure is executed successfully", LogLevel.Information, null);

               return new HttpResponseMessage(HttpStatusCode.OK);
           }
           catch (Exception ex)
           {
               if (conn != null && conn.State == ConnectionState.Open)
               {
                   conn.Close();
               }
               string str = ex.Message;
               //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveCustomers() procedure", LogLevel.Error, null);
               return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
           }
       }
        public void Options() { }
    }
}
