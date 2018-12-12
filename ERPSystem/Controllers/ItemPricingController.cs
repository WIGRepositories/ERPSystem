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
    public class ItemPricingController : ApiController
    {

        [Route("api/ItemPricing/getItemPricing")]
        [HttpGet]
        public DataTable getItemPricing()
        {
            DataTable dt = new DataTable();
            try
            {


                SqlConnection conn = new SqlConnection();

                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getItemPricing";
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
        [Route("api/ItemPricing/postItemPricing")]
        [HttpPost]
        public DataTable postItemPricing(ItemPricing cus)
        {

            DataTable dt = new DataTable();

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spItemPricing";
                cmd.Connection = conn;
                conn.Open();


                SqlParameter Gid = new SqlParameter("@ItemPricingID", SqlDbType.Int);
                Gid.Value = cus.ItemPricingID;
                cmd.Parameters.Add(Gid);

                SqlParameter Gid1 = new SqlParameter("@RFQID", SqlDbType.Int);
                Gid1.Value = cus.RFQID;
                cmd.Parameters.Add(Gid1);

                SqlParameter Gid2 = new SqlParameter("@RFQDetailID", SqlDbType.Int);
                Gid2.Value = cus.RFQDetailID;
                cmd.Parameters.Add(Gid2);


                SqlParameter Gid3 = new SqlParameter("@QuoteResponseID", SqlDbType.Int);
                Gid3.Value = cus.QuoteResponseID;
                cmd.Parameters.Add(Gid3);

                SqlParameter Gid4 = new SqlParameter("@SupplierUnitPrice", SqlDbType.Money);
                Gid4.Value = cus.SupplierUnitPrice;
                cmd.Parameters.Add(Gid4);

               

                SqlParameter Gid5 = new SqlParameter("@SupplierTotal", SqlDbType.Money);
                Gid5.Value = cus.SupplierTotal;
                cmd.Parameters.Add(Gid5);

                SqlParameter Gid6 = new SqlParameter("@UnitPriceMargin", SqlDbType.Money);
                Gid6.Value = cus.UnitPriceMargin;
                cmd.Parameters.Add(Gid6);


                SqlParameter Gid7 = new SqlParameter("@TotalMargin", SqlDbType.Money);
                Gid7.Value = cus.TotalMargin;
                cmd.Parameters.Add(Gid7);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dt;
        }
    }
}
