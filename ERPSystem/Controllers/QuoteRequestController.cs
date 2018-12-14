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
    public class QuoteRequestController : ApiController
    {
        [HttpGet]
        [Route("api/QuoteRequest/getdata")]

        public DataTable QuoteRequest()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spGetQuoteRequest";

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
        [Route("api/QuoteRequest/savedetails")]

        public DataTable QuoteRequest1(QuoteRequest K)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            DateTime DS = DateTime.Now;

            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spQuoteRequest";

                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = K.RFQDetailID;
                cmd.Parameters.Add(fl);

                SqlParameter tid = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                tid.Value = K.RFQDetailID;
                cmd.Parameters.Add(tid);

                SqlParameter aid = new SqlParameter("@SentOn", SqlDbType.VarChar, 50);
                aid.Value = K.SentOn;
                cmd.Parameters.Add(aid);

                SqlParameter tyi = new SqlParameter("@SentTo", SqlDbType.VarChar, 50);
                tyi.Value = K.SentTo;
                cmd.Parameters.Add(tyi);

                SqlParameter rsf = new SqlParameter("@IsReplyReceived", SqlDbType.VarChar, 50);
                rsf.Value = K.IsReplyReceived;
                cmd.Parameters.Add(rsf);

                SqlParameter sia = new SqlParameter("@ReceivedOn", SqlDbType.Date);
                sia.Value = K.ReceivedOn;
                cmd.Parameters.Add(sia);

                SqlParameter acti = new SqlParameter("@RFQID", SqlDbType.Int);
                acti.Value = K.RFQID;
                cmd.Parameters.Add(acti);

                SqlParameter tyii = new SqlParameter("@SupplierID", SqlDbType.Int);
                tyii.Value = K.SupplierID;
                cmd.Parameters.Add(tyii);

                SqlParameter rsff = new SqlParameter("@UnitPrice", SqlDbType.Money);
                rsff.Value = K.UnitPrice;
                cmd.Parameters.Add(rsff);

                SqlParameter siaa = new SqlParameter("@Total", SqlDbType.Money);
                siaa.Value = K.Total;
                cmd.Parameters.Add(siaa);

                SqlParameter actii = new SqlParameter("@CommType", SqlDbType.VarChar, 50);
                actii.Value = K.CommType;
                cmd.Parameters.Add(actii);

                SqlParameter prt = new SqlParameter("@Priority", SqlDbType.VarChar, 50);
                prt.Value = K.Priority;
                cmd.Parameters.Add(prt);

                SqlParameter iss = new SqlParameter("@IsSelected", SqlDbType.VarChar, 50);
                iss.Value = K.IsSelected;
                cmd.Parameters.Add(iss);

                SqlParameter isa = new SqlParameter("@IsApproved", SqlDbType.VarChar, 50);
                isa.Value = K.IsApproved;
                cmd.Parameters.Add(isa);

                SqlParameter sen = new SqlParameter("@SentEmailtoCustomer", SqlDbType.VarChar, 50);
                sen.Value = K.SentEmailtoCustomer;
                cmd.Parameters.Add(sen);

                SqlParameter doo = new SqlParameter("@DocID", SqlDbType.Int);
                doo.Value = K.DocID;
                cmd.Parameters.Add(doo);


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
