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
    public class DeliveryNoteController : ApiController
    {
      
        [HttpGet]
        [Route("api/DeliveryNote/getDeliveryNote")]
        public DataTable getDeliveryNote()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getDeliveryNote";
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
        [Route("api/DeliveryNote/saveDeliveryNote")]
        public DataTable saveDeliveryNote(DeliveryNote cus)
        {

            DataTable dt = new DataTable();

            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDeliveryNote";
                cmd.Connection = conn;
                conn.Open();

                SqlParameter Gid = new SqlParameter("@RFQId", SqlDbType.Int);
                Gid.Value = cus.RFQId;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@POId", SqlDbType.Int);
                Gid1.Value = cus.POId;
                cmd.Parameters.Add(Gid1);

                SqlParameter Add1 = new SqlParameter("@DeliveryNoteNo", SqlDbType.Int);
                Add1.Value = cus.DeliveryNoteNo;
                cmd.Parameters.Add(Add1);
                SqlParameter Add2 = new SqlParameter("@SupplierId", SqlDbType.Int);
                Add2.Value = cus.SupplierId;
                cmd.Parameters.Add(Add2);

                SqlParameter phone = new SqlParameter("@DispatchDate", SqlDbType.DateTime);
                phone.Value = cus.DispatchDate;
                cmd.Parameters.Add(phone);

                SqlParameter llid = new SqlParameter("@Deliverymethod", SqlDbType.VarChar,50);
                llid.Value = cus.Deliverymethod;
                cmd.Parameters.Add(llid);

                SqlParameter Gid3 = new SqlParameter("@IsDelivered", SqlDbType.VarChar,50);
                Gid3.Value = cus.IsDelivered;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@DeliveredOn", SqlDbType.DateTime);
                Gid4.Value = cus.DeliveredOn;
                cmd.Parameters.Add(Gid4);


                SqlParameter Gid5 = new SqlParameter("@TotalItems", SqlDbType.Int);
                Gid5.Value = cus.TotalItems;
                cmd.Parameters.Add(Gid5);


                SqlParameter add1 = new SqlParameter("@CustomerAddress", SqlDbType.VarChar,250);
                add1.Value = cus.CustomerAddress;
                cmd.Parameters.Add(add1);

                SqlParameter add2 = new SqlParameter("@InvoiceAddress", SqlDbType.VarChar, 250);
                add2.Value = cus.InvoiceAddress;
                cmd.Parameters.Add(add2);

                SqlParameter Gid7 = new SqlParameter("@flag", SqlDbType.VarChar, 50);
                Gid7.Value = cus.flag;
                cmd.Parameters.Add(Gid7);

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

