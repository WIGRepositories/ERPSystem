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
    public class ShippingOrderController : ApiController
    {
        [HttpGet]
        [Route("api/ShippingOrder/getdata")]

        public DataTable ShippingOrder()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spGetShippingOrder";
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
        [Route("api/ShippingOrder/SaveLocations")]

        public DataTable ShippingOrder(ShippingOrder A)
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
                cmd.CommandText = "spShippingOrder";

                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = A.ShippingOrderID;
                cmd.Parameters.Add(fl);

                SqlParameter sid = new SqlParameter("@ShippingOrderID", SqlDbType.Int);
                sid.Value = A.ShippingOrderID;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@SupplierInvoiceID", SqlDbType.Int);
                rid.Value = A.SupplierInvoiceID;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@FromAddress", SqlDbType.VarChar, 50);
                rf.Value = A.FromAddress;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@ToAddress", SqlDbType.VarChar, 50);
                sd.Value = A.ToAddress;
                cmd.Parameters.Add(sd);

                SqlParameter dam = new SqlParameter("@Date", SqlDbType.Date);
                dam.Value = A.Date;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@Time", SqlDbType.Time);
                ti.Value = A.Time;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@ArrivedOn", SqlDbType.DateTime);
                es.Value = A.ArrivedOn;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@DeliveredOn", SqlDbType.DateTime);
                ac.Value = A.DeliveredOn;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@RFQID", SqlDbType.Int);
                qi.Value = A.RFQID;
                cmd.Parameters.Add(qi);



                SqlParameter act = new SqlParameter("@Active", SqlDbType.Int);
                act.Value = A.Active;
                cmd.Parameters.Add(act);
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
