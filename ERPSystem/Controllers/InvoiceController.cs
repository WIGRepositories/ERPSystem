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
    public class InvoiceController : ApiController
    {
        [HttpGet]
        [Route("api/Invoice/getdata")]
        public DataTable Invoice ()
        {

            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInvoice";
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
        [Route("api/invoice/savedetails")]
        public DataTable Invoicee (Invoice A)
        {
            DataTable dt = new DataTable();

            try
            {

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelInvoice";



                SqlParameter sid = new SqlParameter("@Id", SqlDbType.Int);
                sid.Value = A.Id;
                cmd.Parameters.Add(sid);

                SqlParameter rid = new SqlParameter("@InvoiceNo", SqlDbType.Int);
                rid.Value = A.InvoiceNo;
                cmd.Parameters.Add(rid);

                SqlParameter rf = new SqlParameter("@POId", SqlDbType.Int);
                rf.Value = A.POId;
                cmd.Parameters.Add(rf);

                SqlParameter sd = new SqlParameter("@PONum", SqlDbType.Int);
                sd.Value = A.PONum;
                cmd.Parameters.Add(sd);

                SqlParameter dam = new SqlParameter("@invoicedate", SqlDbType.DateTime);
                dam.Value = A.invoicedate;
                cmd.Parameters.Add(dam);

                SqlParameter ti = new SqlParameter("@paymentmodeid", SqlDbType.Int);
                ti.Value = A.paymentmodeid;
                cmd.Parameters.Add(ti);


                SqlParameter es = new SqlParameter("@supplierid", SqlDbType.Int);
                es.Value = A.supplierid;
                cmd.Parameters.Add(es);



                SqlParameter ac = new SqlParameter("@receivedon", SqlDbType.DateTime);
                ac.Value = A.receivedon;
                cmd.Parameters.Add(ac);

                SqlParameter qi = new SqlParameter("@isapproved", SqlDbType.VarChar,250);
                qi.Value = A.isapproved;
                cmd.Parameters.Add(qi);



                SqlParameter fl = new SqlParameter("@ispaid", SqlDbType.VarChar,250);
                fl.Value = A.ispaid;
                cmd.Parameters.Add(fl);

                SqlParameter ship = new SqlParameter("@paidOn", SqlDbType.DateTime);
                ship.Value = A.paidOn;
                cmd.Parameters.Add(ship);



                SqlParameter de = new SqlParameter("@OrderconfirmationId", SqlDbType.Int);
                de.Value = A.OrderconfirmationId;
                cmd.Parameters.Add(de);

                SqlParameter qipo = new SqlParameter("@RFQId", SqlDbType.Int);
                qipo.Value = A.RFQId;
                cmd.Parameters.Add(qipo);



                SqlParameter po = new SqlParameter("@InvoiceSubTotal", SqlDbType.Decimal);
                po.Value = A.InvoiceSubTotal;
                cmd.Parameters.Add(po);

                SqlParameter podi = new SqlParameter("@InvoiceCharges", SqlDbType.Decimal);
                podi.Value = A.InvoiceCharges;
                cmd.Parameters.Add(podi);


                SqlParameter pot = new SqlParameter("@InvoiceDiscounts", SqlDbType.Decimal);
                pot.Value = A.InvoiceDiscounts;
                cmd.Parameters.Add(pot);

                SqlParameter fla = new SqlParameter("@InvoiceTotal", SqlDbType.Decimal);
                fla.Value = A.InvoiceTotal;
                cmd.Parameters.Add(fla);

                SqlParameter fa = new SqlParameter("@flag", SqlDbType.VarChar);
                fa.Value = A.flag;
                cmd.Parameters.Add(fa);


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
