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
    public class CustomerPODetailsController : ApiController
    {
        [HttpGet]
        [Route("api/CustomerPODetail/getdata")]
        public DataTable CustomerPOD()
        {

            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetCustomerPODetails";
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
        [Route("api/CustomerPODetails/savedetails")]
        public DataTable CustomerPODetails(CustomerPODetails A)
        {
            DataTable dt = new DataTable();

            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelCustomerPODetails";



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

                SqlParameter dam = new SqlParameter("@DealerUnitPrice", SqlDbType.Decimal);
                dam.Value = A.DealerUnitPrice;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@Dealercharges", SqlDbType.Decimal);
                ti.Value = A.Dealercharges;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@Dealerdiscounts", SqlDbType.Decimal);
                es.Value = A.Dealerdiscounts;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@subtotal", SqlDbType.Decimal);
                ac.Value = A.subtotal;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@SupplierUnitPrice", SqlDbType.Decimal);
                qi.Value = A.SupplierUnitPrice;
                cmd.Parameters.Add(qi);



                SqlParameter fl = new SqlParameter("@SupplierDiscount", SqlDbType.Decimal);
                fl.Value = A.SupplierDiscount;
                cmd.Parameters.Add(fl);

                SqlParameter ship = new SqlParameter("@SupplierCharges", SqlDbType.Decimal);
                ship.Value = A.SupplierCharges;
                cmd.Parameters.Add(ship);



                SqlParameter de = new SqlParameter("@Othercharges", SqlDbType.Decimal);
                de.Value = A.Othercharges;
                cmd.Parameters.Add(de);

                SqlParameter qipo = new SqlParameter("@total", SqlDbType.Decimal);
                qipo.Value = A.total;
                cmd.Parameters.Add(qipo);



                //SqlParameter po = new SqlParameter("@POCharges", SqlDbType.Decimal);
                //po.Value = A.POCharges;
                //cmd.Parameters.Add(po);

                //SqlParameter podi = new SqlParameter("@PODiscounts", SqlDbType.Decimal);
                //podi.Value = A.PODiscounts;
                //cmd.Parameters.Add(podi);


                //SqlParameter pot = new SqlParameter("@POTotal", SqlDbType.Decimal);
                //pot.Value = A.POTotal;
                //cmd.Parameters.Add(pot);

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
