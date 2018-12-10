using ERPSystem.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ERPSystem.Controllers
{
    public class TransactionMasterController : ApiController
    {
               [HttpGet]
            [Route("api/TransactionMaster/details")]

            public DataTable TranscationMaster()
            {
                DataTable dt = new DataTable();
                SqlConnection con = new SqlConnection();

                try
                {


                    con.ConnectionString = ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "spTransactionMaster";
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
            [Route("api/TransactionMaster/details1")]

            public DataTable TransactionMaster(TransactionMaster K)
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
                    cmd.CommandText = "spTransactionMaster";

                    SqlParameter tid = new SqlParameter("@TransactionMasterID", SqlDbType.Int);
                    tid.Value = K.TransactionMasterID;
                    cmd.Parameters.Add(tid);

                    SqlParameter aid = new SqlParameter("@Amount", SqlDbType.Money);
                    aid.Value = K.Amount;
                    cmd.Parameters.Add(aid);

                    SqlParameter tyi = new SqlParameter("@Type", SqlDbType.VarChar, 50);
                    tyi.Value = K.Type;
                    cmd.Parameters.Add(tyi);

                    SqlParameter rsf = new SqlParameter("@RFQDetail", SqlDbType.VarChar, 50);
                    rsf.Value = K.RFQDetail;
                    cmd.Parameters.Add(rsf);

                    SqlParameter sia = new SqlParameter("@RFQID", SqlDbType.Int);
                    sia.Value = K.RFQID;
                    cmd.Parameters.Add(sia);

                    SqlParameter acti = new SqlParameter("@Active", SqlDbType.Int);
                    acti.Value = K.Active;
                    cmd.Parameters.Add(acti);

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

