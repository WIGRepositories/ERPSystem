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
    public class DeliveryNoteDetailsController : ApiController
    {
        [HttpGet]
        [Route("api/DeliveryNoteDetails/getDeliveryNoteDetails")]

        public DataTable getDeliveryNoteDetails()
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "getDeliveryNoteDetails";
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
        [Route("api/DeliveryNoteDetails/SaveDeliveryNoteDetails")]

        public DataTable SaveDeliveryNoteDetails(DeliveryNoteDetails d)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            try
            {


                con.ConnectionString = ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insupdDeliveryNoteDetails";
              

                SqlParameter fl = new SqlParameter("@flag", SqlDbType.VarChar);
                fl.Value = d.flag;
                cmd.Parameters.Add(fl);


                SqlParameter ID = new SqlParameter("@DeliveryNoteId", SqlDbType.Int);
                ID.Value = d.DeliveryNoteId;
                cmd.Parameters.Add(ID);


                SqlParameter ID1 = new SqlParameter("@RFQItemId", SqlDbType.Int);
                ID1.Value = d.RFQItemId;
                cmd.Parameters.Add(ID1);


                SqlParameter ID2 = new SqlParameter("@NoOfUnitsOrdered", SqlDbType.Int);
                ID2.Value = d.NoOfUnitsOrdered;
                cmd.Parameters.Add(ID2);

                SqlParameter ID3 = new SqlParameter("@NoOfUnitsDelivered", SqlDbType.Int);
                ID3.Value = d.NoOfUnitsDelivered;
                cmd.Parameters.Add(ID3);



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

