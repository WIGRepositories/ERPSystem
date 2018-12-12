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
    public class SupplierInvoiceController : ApiController
    {

        [HttpGet]
        [Route("api/SupplierInvoice/getdata")]

        public DataTable SupplierInvoice()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spGetSupplierInvoice";
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
        [Route("api/SupplierInvoice/SaveLocation")]

        public DataTable SupplierInvoice(SupplierInvoice K)
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
                cmd.CommandText = "spSupplierInvoice";

                SqlParameter fl = new SqlParameter("@falg", SqlDbType.VarChar);
                fl.Value = K.SupplierInvoiceID;
                cmd.Parameters.Add(fl);

                SqlParameter sid = new SqlParameter("@SupplierInvoiceID", SqlDbType.Int);
                sid.Value = K.SupplierInvoiceID;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@RFQID", SqlDbType.Int);
                rid.Value = K.RFQID;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                rf.Value = K.RFQDetailID;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@SupplierID", SqlDbType.Int);
                sd.Value = K.SupplierID;
                cmd.Parameters.Add(sd);


                SqlParameter dam = new SqlParameter("@Date", SqlDbType.Date);
                dam.Value = K.Date;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@Time", SqlDbType.Time);
                ti.Value = K.Time;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@CommType", SqlDbType.DateTime);
                es.Value = K.CommType;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@DocID", SqlDbType.Int);
                ac.Value = K.DocID;
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
