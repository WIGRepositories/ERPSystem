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
    public class RecieptreturnController : ApiController
    {
        [Route("api/Recieptreturn/getRecieptreturn")]
        [HttpGet]
        public DataTable getRecieptreturn()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getRecieptreturn";
                cmd.Connection = conn;

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);



            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;
        }


        [HttpPost]
        [Route("api/Recieptreturn/SaveRecieptreturn")]
        public DataTable SaveCustomers(Recieptreturn cus)
        {

            DataTable dt = new DataTable();

            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsupdRecieptreturn";
                cmd.Connection = conn;
                conn.Open();


                

                SqlParameter Gid1 = new SqlParameter("@item", SqlDbType.VarChar, 50);
                Gid1.Value = cus.item;
                cmd.Parameters.Add(Gid1);

                SqlParameter Add1 = new SqlParameter("@noofUnits", SqlDbType.Int);
                Add1.Value = cus.noofUnits;
                cmd.Parameters.Add(Add1);

                SqlParameter Add2 = new SqlParameter("@returnedon", SqlDbType.DateTime);
                Add2.Value = cus.returnedon;
                cmd.Parameters.Add(Add2);

                SqlParameter phone = new SqlParameter("@returnedBy", SqlDbType.VarChar, 50);
                phone.Value = cus.returnedBy;
                cmd.Parameters.Add(phone);

                SqlParameter phone1 = new SqlParameter("@comment", SqlDbType.VarChar, 50);
                phone1.Value = cus.comment;
                cmd.Parameters.Add(phone1);


                SqlParameter Gid5 = new SqlParameter("@flag", SqlDbType.VarChar);
                Gid5.Value = cus.flag;
                cmd.Parameters.Add(Gid5);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                //Logger.Trace(LogCategory.WebApp, "InsUpdCustomer stored procedure is executed successfully", LogLevel.Information, null);


            }
            catch (Exception ex)
            {

                throw ex;
            }
            return dt;
        }
    }
}

