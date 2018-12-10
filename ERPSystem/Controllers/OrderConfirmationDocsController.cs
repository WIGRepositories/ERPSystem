using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using ERPSystem.Models;

namespace ERPSystem.Controllers
{
    public class PurchaseOrderController : ApiController
    {
        public object PurchaseOrderID { get; internal set; }

        [HttpGet]
        [Route("api/OrderConfirmationDocs/SaveLocationsimport")]

        public DataTable OrderConfirmationDocs()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spOrderConfirmationDocs";
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
        [Route("api/OrderConfirmationDocs/SaveLocationsimport1")]

        public DataTable OrderConfirmationDocs1(OrderConfirmationDocs d)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spOrderConfirmationDocs";


                SqlParameter ID = new SqlParameter("@OrderConfirmationDocsID", DbType.Int32);
                ID.Value = d.OrderConfirmationDocsID;
                cmd.Parameters.Add(ID);


                SqlParameter dd = new SqlParameter("@OrderConfirmationID", DbType.Int32);
                dd.Value = d.OrderConfirmationID;
                cmd.Parameters.Add(dd);


                SqlParameter aa = new SqlParameter("@DocID", DbType.Int32);
                aa.Value = d.DocID;
                cmd.Parameters.Add(aa);




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
