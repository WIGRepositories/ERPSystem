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
    public class CustomerPurchaseOrderController : ApiController
    {
        [HttpGet]
        [Route("api/CustomerPurchaseOrder/getdata")]
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
                cmd.CommandText = "GetCustomerPurchaseOrder";
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
        [Route("api/CustomerPurchase/savedetails")]
        public DataTable CustomerpurchaseOrder(CustmoerPurchase A)
        {
            DataTable dt = new DataTable();

            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelCustomerPurchaseOrder";



                SqlParameter sid = new SqlParameter("@Id", SqlDbType.Int);
                sid.Value = A.Id;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@RFQId", SqlDbType.Int);
                rid.Value = A.RFQId;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@RFQConfirmationId", SqlDbType.Int);
                rf.Value = A.RFQConfirmationId;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@PONum", SqlDbType.Int);
                sd.Value = A.PONum;
                cmd.Parameters.Add(sd);

                SqlParameter dam = new SqlParameter("@PODate", SqlDbType.Date);
                dam.Value = A.PODate;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@SupplierId", SqlDbType.Int);
                ti.Value = A.SupplierId;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@PoSenton", SqlDbType.DateTime);
                es.Value = A.PoSenton;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@isPOSent", SqlDbType.DateTime);
                ac.Value = A.isPOSent;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@PODocId", SqlDbType.Int);
                qi.Value = A.PODocId;
                cmd.Parameters.Add(qi);



                SqlParameter fl = new SqlParameter("@ShippingMethod", SqlDbType.Int);
                fl.Value = A.ShippingMethod;
                cmd.Parameters.Add(fl);

                SqlParameter ship = new SqlParameter("@ShippingTerms", SqlDbType.Int);
                ship.Value = A.ShippingTerms;
                cmd.Parameters.Add(ship);



                SqlParameter de = new SqlParameter("@DeliveryDate", SqlDbType.Date);
                de.Value = A.DeliveryDate;
                cmd.Parameters.Add(de);

                SqlParameter qipo = new SqlParameter("@POSubTotal", SqlDbType.Decimal);
                qipo.Value = A.POSubTotal;
                cmd.Parameters.Add(qipo);



                SqlParameter po = new SqlParameter("@POCharges", SqlDbType.Decimal);
                po.Value = A.POCharges;
                cmd.Parameters.Add(po);

                SqlParameter podi = new SqlParameter("@PODiscounts", SqlDbType.Decimal);
                podi.Value = A.PODiscounts;
                cmd.Parameters.Add(podi);


                SqlParameter pot = new SqlParameter("@POTotal", SqlDbType.Decimal);
                pot.Value = A.POTotal;
                cmd.Parameters.Add(pot);

                SqlParameter fla = new SqlParameter("@flag", SqlDbType.VarChar);
                fla.Value = A.flag;
                cmd.Parameters.Add(fla);


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
