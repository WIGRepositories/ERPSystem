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
    public class supplierPODetailsController : ApiController
    {
        [HttpGet]
        [Route("api/supplierPODetails/getdata")]
        public DataTable supplierPODetails()
        {

            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetsupplierPODetails";
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
        [Route("api/supplierPODetails/savedetails")]
        public DataTable supplierPODetails(supplierPODetails A)
        {
            DataTable dt = new DataTable();

            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelsupplierPODetails";



                SqlParameter sid = new SqlParameter("@Id", SqlDbType.Int);
                sid.Value = A.Id;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@POId", SqlDbType.Int);
                rid.Value = A.POId;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@RFQItemId", SqlDbType.Int);
                rf.Value = A.RFQItemId;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@NoOfUnits", SqlDbType.Int);
                sd.Value = A.NoOfUnits;
                cmd.Parameters.Add(sd);

                SqlParameter dam = new SqlParameter("@UnitPrice", SqlDbType.Decimal);
                dam.Value = A.UnitPrice;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@charges", SqlDbType.Decimal);
                ti.Value = A.charges;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@discounts", SqlDbType.Decimal);
                es.Value = A.discounts;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@subtotal", SqlDbType.Decimal);
                ac.Value = A.subtotal;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@Total", SqlDbType.Decimal);
                qi.Value = A.Total;
                cmd.Parameters.Add(qi);



                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = A.flag;
                cmd.Parameters.Add(fl);

                //SqlParameter ship = new SqlParameter("@ShippingTerms", SqlDbType.Int);
                //ship.Value = A.ShippingTerms;
                //cmd.Parameters.Add(ship);



                //SqlParameter de = new SqlParameter("@DeliveryDate", SqlDbType.Date);
                //de.Value = A.DeliveryDate;
                //cmd.Parameters.Add(de);

                //SqlParameter qipo = new SqlParameter("@POSubTotal", SqlDbType.Decimal);
                //qipo.Value = A.POSubTotal;
                //cmd.Parameters.Add(qipo);



                //SqlParameter po = new SqlParameter("@POCharges", SqlDbType.Decimal);
                //po.Value = A.POCharges;
                //cmd.Parameters.Add(po);

                //SqlParameter podi = new SqlParameter("@PODiscounts", SqlDbType.Decimal);
                //podi.Value = A.PODiscounts;
                //cmd.Parameters.Add(podi);


                //SqlParameter pot = new SqlParameter("@POTotal", SqlDbType.Decimal);
                //pot.Value = A.POTotal;
                //cmd.Parameters.Add(pot);

                //SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                //fl.Value = A.flag;
                //cmd.Parameters.Add(fl);


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












