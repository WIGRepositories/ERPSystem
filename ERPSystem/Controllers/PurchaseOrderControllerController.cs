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
    public class PurchaseOrderControllerController : ApiController
    {
        [HttpGet]
        [Route("api/PurchaseOrder/Getdata")]

        public DataTable PurchaseOrderController()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spGetPurchaseOrder";
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
        [Route("api/PurchaseOrder/SaveLocations")]

        public DataTable PurchaseOrderController1(PurchaseOrder K)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            DateTime DS = DateTime.Now;
            
            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spPurchaseOrder";

                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = K.flag;
                cmd.Parameters.Add(fl);

                SqlParameter PID = new SqlParameter("@PurchaseOrderID", SqlDbType.Int);
                PID.Value = K.PurchaseOrderID;
                cmd.Parameters.Add(PID);

                SqlParameter rid = new SqlParameter("@RFQID", SqlDbType.Int);
                rid.Value = K.RFQID;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                rf.Value = K.RFQDetailID;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@SupplierID", SqlDbType.Int);
                sd.Value = K.SupplierID;
                cmd.Parameters.Add(sd);

                SqlParameter sa = new SqlParameter("@RFQEstimation", SqlDbType.VarChar,50);
                sa.Value = K.RFQEstimation;
                cmd.Parameters.Add(sa);

                SqlParameter dam = new SqlParameter("@Date", SqlDbType.Date);
                dam.Value = K.Date;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@Time", SqlDbType.Time);
                ti.Value = K.Time;
                cmd.Parameters.Add(ti);
             

                SqlParameter es = new SqlParameter("@EstimatedStart", SqlDbType.DateTime);
                es.Value = DS;
                cmd.Parameters.Add(es);

                SqlParameter est = new SqlParameter("@EstimatedEnd", SqlDbType.DateTime);
                est.Value = DS;
                cmd.Parameters.Add(est);

                SqlParameter ac = new SqlParameter("@Active", SqlDbType.Int);
                ac.Value = K.Active;
                cmd.Parameters.Add(ac);

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
