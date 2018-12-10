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
    public class PaymentController : ApiController
    {
        [HttpGet]
        [Route("api/Payment/getimport")]

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
                cmd.CommandText = "spPayment";

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
        [Route("api/Payment/details1")]

        public DataTable TransactionMaster(Paymentmodel K)
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
                cmd.CommandText = "spPayment";

                SqlParameter tid = new SqlParameter("@PaymentID", SqlDbType.Int);
                tid.Value = K.PaymentID;
                cmd.Parameters.Add(tid);

                SqlParameter aid = new SqlParameter("@InvoiceID", SqlDbType.Int);
                aid.Value = K.InvoiceID;
                cmd.Parameters.Add(aid);

                SqlParameter tyi = new SqlParameter("@SupplierID", SqlDbType.Int);
                tyi.Value = K.SupplierID;
                cmd.Parameters.Add(tyi);

                SqlParameter rsf = new SqlParameter("@Amount", SqlDbType.Money);
                rsf.Value = K.Amount;
                cmd.Parameters.Add(rsf);

                SqlParameter sia = new SqlParameter("@ModeofPayment", SqlDbType.VarChar, 50);
                sia.Value = K.ModeofPayment;
                cmd.Parameters.Add(sia);

                SqlParameter acti = new SqlParameter("@Date", SqlDbType.Date);
                acti.Value = K.Date;
                cmd.Parameters.Add(acti);

                SqlParameter tyii = new SqlParameter("@Time", SqlDbType.Time);
                tyii.Value = K.Time;
                cmd.Parameters.Add(tyii);

                SqlParameter rsff = new SqlParameter("@ReceiptDoc", SqlDbType.VarChar, -1);
                rsff.Value = K.ReceiptDoc;
                cmd.Parameters.Add(rsff);

                SqlParameter siaa = new SqlParameter("@PaymentVoucher", SqlDbType.VarChar, -1);
                siaa.Value = K.PaymentVoucher;
                cmd.Parameters.Add(siaa);

                SqlParameter actii = new SqlParameter("@Status", SqlDbType.VarChar, 50);
                actii.Value = K.Status;
                cmd.Parameters.Add(actii);

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
  
