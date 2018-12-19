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
    public class SuppliersController : ApiController
    {
        [Route("api/Suppliers/getSuppliers")]
        [HttpGet]
        public DataTable getSuppliers()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getSupplier";
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
        [Route("api/Suppliers/SaveSuppliers")]
        public DataTable SaveSuppliers(supplierPurchase cus)
        {

            DataTable dt = new DataTable();

            try
            {
                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insupdSupplier";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                Gid.Value = cus.Name;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@SupplierCode", SqlDbType.VarChar, 50);
                Gid1.Value = cus.SupplierCode;
                cmd.Parameters.Add(Gid1);

                SqlParameter add1 = new SqlParameter("@shippingaddress", SqlDbType.VarChar, 250);
                add1.Value = cus.shippingaddress;
                cmd.Parameters.Add(add1);

                SqlParameter Gid2 = new SqlParameter("@billingaddress", SqlDbType.VarChar,250);
                Gid2.Value = cus.billingaddress;
                cmd.Parameters.Add(Gid2);


                SqlParameter phone = new SqlParameter("@ContactNo", SqlDbType.VarChar, 50);
                phone.Value = cus.ContactNo;
                cmd.Parameters.Add(phone);

                SqlParameter llid = new SqlParameter("@ContactNo1", SqlDbType.VarChar, 50);
                llid.Value = cus.ContactNo1;
                cmd.Parameters.Add(llid);

                SqlParameter Gid3 = new SqlParameter("@Email", SqlDbType.VarChar,250);
                Gid3.Value = cus.Email;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@Active", SqlDbType.Int);
                Gid4.Value = cus.Active;
                cmd.Parameters.Add(Gid4);

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


