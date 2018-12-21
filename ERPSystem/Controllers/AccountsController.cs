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
    public class AccountsController : ApiController
    {
        [HttpGet]
        [Route("api/Accounts/Getdata")]

        public DataTable Accounts() {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetAccounts";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch(Exception ex)
            {

                throw ex;

            }


            return dt;
        }

        [HttpPost]
        [Route("api/Acoounts/savedetails")]

        public DataTable Accountsdetails(Accountdetails A )
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelAccounts";


                SqlParameter id = new SqlParameter("@Id", SqlDbType.Int);
                id.Value = A.Id;
                cmd.Parameters.Add(id);

                SqlParameter acc = new SqlParameter("@AccountName", SqlDbType.VarChar, 500);
                acc.Value = A.AccountName;
                cmd.Parameters.Add(acc);

                SqlParameter acn = new SqlParameter("@AccountNumber", SqlDbType.VarChar, 50);
                acn.Value = A.AccountNumber;
                cmd.Parameters.Add(acn);

                SqlParameter des = new SqlParameter("@Description", SqlDbType.VarChar, 500);
                des.Value = A.Description;
                cmd.Parameters.Add(des);

                SqlParameter ac = new SqlParameter("@AccountCode", SqlDbType.VarChar, 50);
                ac.Value = A.AccountCode;
                cmd.Parameters.Add(ac);

                SqlParameter acti = new SqlParameter("@Active", SqlDbType.Int);
                acti.Value = A.Active;
                cmd.Parameters.Add(acti);

                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = A.flag;
                cmd.Parameters.Add(fl);

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
