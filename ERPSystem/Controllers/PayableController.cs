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
    public class PayableController : ApiController
    {
        [Route("api/Payable/getPayable")]
        [HttpGet]
        public DataTable getPayable()
        {
            DataTable dt = new DataTable();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getPayable";
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;

            }
            return dt;

        }
        [Route("api/Payable/savePayable")]
        [HttpPost]
        public DataTable saveReceivable(Payable p)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Payable";
                cmd.Connection = conn;

                SqlParameter t1 = new SqlParameter("@flag", SqlDbType.VarChar, 50);
                t1.Value = p.flag;
                cmd.Parameters.Add(t1);
                SqlParameter t2 = new SqlParameter("@RFQId", SqlDbType.VarChar, 50);
                t2.Value = p.RFQId;
                cmd.Parameters.Add(t2);

                SqlParameter n2 = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                n2.Value = p.Name;
                cmd.Parameters.Add(n2);

                SqlParameter t3 = new SqlParameter("@AccountCode", SqlDbType.VarChar, 50);
                t3.Value = p.AccountCode;
                cmd.Parameters.Add(t3);

                SqlParameter t4 = new SqlParameter("@Amount", SqlDbType.Decimal);
                t4.Value = p.Amount;
                cmd.Parameters.Add(t4);

                SqlParameter t5 = new SqlParameter("@Paiddate", SqlDbType.DateTime);
                t5.Value = p.Paiddate;
                cmd.Parameters.Add(t5);

                SqlParameter t6 = new SqlParameter("@ActualReceivedDate", SqlDbType.DateTime);
                t6.Value = p.ActualReceivedDate;
                cmd.Parameters.Add(t6);

                SqlParameter t7 = new SqlParameter("@Status", SqlDbType.VarChar, 50);
                t7.Value = p.Status;
                cmd.Parameters.Add(t7);
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
