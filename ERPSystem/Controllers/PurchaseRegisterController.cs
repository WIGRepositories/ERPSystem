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
    public class PurchaseRegisterController : ApiController
    {
         [HttpGet]
        [Route("api/PurchaseRegister/getdata")]
        public DataTable CustomerPurchase ()
        {

            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetPurchaseRegister";
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
         [Route("api/PurchaseRegister/savedetails")]
         public DataTable CustomerpurchaseOrder(PurchaseRegister A)
         {
             DataTable dt = new DataTable();

             try
             {

                 SqlConnection con = new SqlConnection();
                 con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                 SqlCommand cmd = new SqlCommand();
                 cmd.Connection = con;
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.CommandText = "InsUpdDelPurchaseRegister";



                 SqlParameter sid = new SqlParameter("@ItemName", SqlDbType.VarChar,50);
                 sid.Value = A.ItemName;
                 cmd.Parameters.Add(sid);

                 SqlParameter rid = new SqlParameter("@NoofUnits", SqlDbType.Int);
                 rid.Value = A.NoofUnits;
                 cmd.Parameters.Add(rid);

                 SqlParameter rf = new SqlParameter("@PurchasedOn", SqlDbType.DateTime);
                 rf.Value = A.PurchasedOn;
                 cmd.Parameters.Add(rf);

                 SqlParameter sd = new SqlParameter("@UnitPrice", SqlDbType.Decimal);
                 sd.Value = A.UnitPrice;
                 cmd.Parameters.Add(sd);

                 SqlParameter dam = new SqlParameter("@Charges", SqlDbType.Decimal);
                 dam.Value = A.Charges;
                 cmd.Parameters.Add(dam);

                 SqlParameter ti = new SqlParameter("@Discount", SqlDbType.Decimal);
                 ti.Value = A.Discount;
                 cmd.Parameters.Add(ti);
                 SqlParameter es = new SqlParameter("@SubTotal", SqlDbType.Decimal);
                 es.Value = A.SubTotal;
                 cmd.Parameters.Add(es);
                 SqlParameter ac = new SqlParameter("@Total", SqlDbType.Decimal);
                 ac.Value = A.@Total;
                 cmd.Parameters.Add(ac);
                 //SqlParameter fla = new SqlParameter("@flag", SqlDbType.VarChar);
                 //fla.Value = A.flag;
                 //cmd.Parameters.Add(fla);


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

