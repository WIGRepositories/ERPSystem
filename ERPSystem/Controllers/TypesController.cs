using ERPSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Text;
using System.IO;
using ERPSystem;
using System.Web.Http.Tracing;

namespace ERPSystem.Controllers
{
    public class TypesController : ApiController
    {



        [HttpGet]
        [Route("api/Types/TypesByGroupId")]
        public DataTable TypesByGroupId( )
        {
            DataTable Tbl = new DataTable();           
            try
            {
                 //connect to database
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetUsers";
                cmd.Connection = conn;

                //SqlParameter Gid = new SqlParameter();
                //Gid.ParameterName = "@typegrpid";
                //Gid.SqlDbType = SqlDbType.Int;
                //Gid.Value = groupid;
                //cmd.Parameters.Add(Gid);

                //SqlParameter isid = new SqlParameter();
                //isid.ParameterName = "@InspectionId";
                //isid.SqlDbType = SqlDbType.Int;
                //isid.Value = inspid;
                //cmd.Parameters.Add(isid);

                //SqlParameter mvv = new SqlParameter();
                //mvv.ParameterName = "@MaintenaceId";
                //mvv.SqlDbType = SqlDbType.Int;
                //mvv.Value = mvid;
                //cmd.Parameters.Add(mvv);



                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //prepare a file
                StringBuilder str = new StringBuilder();

                //str.Append(string.Format("test\n{0}", groupid.ToString()));
                
                //Logger.Trace(LogCategory.WebApp, "GetTypesByGroupId Credentials completed.", LogLevel.Information, null);
            }

            catch (Exception ex)
            {
                throw ex;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in TypesByGroupId() procedure", LogLevel.Error, null);
            }
            
            // int found = 0;
            return Tbl;
        }

        [HttpPost]
        [Route("api/Types/TypeGroupsData")]
        public DataSet TypeGroupsData(TypeGroupsData tg)
        {
            SqlConnection conn = new SqlConnection();
            DataSet ds = new DataSet();

            try
            {
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdUsers";
                cmd.Connection = conn;

                SqlParameter access = new SqlParameter("@Id", SqlDbType.Int);
                access.Value = tg.Id;
                cmd.Parameters.Add(access);

                SqlParameter cs = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
                cs.Value = tg.FirstName;
                cmd.Parameters.Add(cs);

                SqlParameter iptn = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
                iptn.Value = tg.LastName;
                cmd.Parameters.Add(iptn);

                SqlParameter ipn = new SqlParameter("@MiddleName", SqlDbType.VarChar, 50);
                ipn.Value = tg.MiddleName;
                cmd.Parameters.Add(ipn);

                SqlParameter vdid4 = new SqlParameter("@EmpNo", SqlDbType.VarChar, 20);
                vdid4.Value = tg.EmpNo;
                cmd.Parameters.Add(vdid4);

                SqlParameter jdocType = new SqlParameter("@EmailId", SqlDbType.VarChar, 50);
                jdocType.Value = tg.EmailId;
                cmd.Parameters.Add(jdocType);

                SqlParameter maintVend = new SqlParameter("@RoleId", SqlDbType.Int);
                maintVend.Value = tg.RoleId;
                cmd.Parameters.Add(maintVend);

                SqlParameter status = new SqlParameter("@CompanyId", SqlDbType.Int);
                status.Value = tg.CompanyId;
                cmd.Parameters.Add(status);

                SqlParameter mat = new SqlParameter("@Active", SqlDbType.Int);
                mat.Value = tg.Active;
                cmd.Parameters.Add(mat);

                SqlParameter state = new SqlParameter("@GenderId", SqlDbType.Int);
                state.Value = tg.GenderId;
                cmd.Parameters.Add(state);

                SqlParameter jobtypes = new SqlParameter("@ManagerId", SqlDbType.Int);
                jobtypes.Value = tg.ManagerId;
                cmd.Parameters.Add(jobtypes);

                SqlParameter ytuty = new SqlParameter("@CountryId", SqlDbType.Int);
                ytuty.Value = tg.CountryId;
                cmd.Parameters.Add(ytuty);

                SqlParameter ma = new SqlParameter("@StateId", SqlDbType.Int);
                ma.Value = tg.StateId;
                cmd.Parameters.Add(ma);

                SqlParameter st = new SqlParameter("@ZipCode", SqlDbType.VarChar, 10);
                st.Value = tg.ZipCode;
                cmd.Parameters.Add(st);

                SqlParameter job = new SqlParameter("@ContactNo1", SqlDbType.VarChar, 20);
                job.Value = tg.ContactNo1;
                cmd.Parameters.Add(job);

                SqlParameter ytu = new SqlParameter("@ContactNo2", SqlDbType.VarChar, 20);
                ytu.Value = tg.ContactNo2;
                cmd.Parameters.Add(ytu);

                SqlParameter a1 = new SqlParameter("@Address", SqlDbType.VarChar, 500);
                a1.Value = tg.Address;
                cmd.Parameters.Add(a1);

                SqlParameter alt = new SqlParameter("@AltAddress", SqlDbType.VarChar, 500);
                alt.Value = tg.AltAddress;
                cmd.Parameters.Add(alt);

                SqlParameter p1 = new SqlParameter("@photo", SqlDbType.VarChar, -1);
                p1.Value = tg.photo1;
                cmd.Parameters.Add(p1);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(ds);
                
                return ds;
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                throw ex;
            }

        }

        [HttpPost]
        [Route("api/Types/SaveType")]
        public HttpResponseMessage SaveType(Types b)
        {

            //connect to database
            SqlConnection conn = new SqlConnection();
            try
            {
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdTypes";
                cmd.Connection = conn;
                conn.Open();
                SqlParameter Cid = new SqlParameter();
                Cid.ParameterName = "@Id";
                Cid.SqlDbType = SqlDbType.Int;
                Cid.Value = Convert.ToInt32(b.Id);
                cmd.Parameters.Add(Cid);

                SqlParameter Gid = new SqlParameter();
                Gid.ParameterName = "@Name";
                Gid.SqlDbType = SqlDbType.VarChar;
                Gid.Value = b.Name;
                cmd.Parameters.Add(Gid);

                SqlParameter lid = new SqlParameter();
                lid.ParameterName = "@TypeGroupId";
                lid.SqlDbType = SqlDbType.Int;
                lid.Value = Convert.ToInt32(b.TypeGroupId);
                cmd.Parameters.Add(lid);

                SqlParameter pDesc = new SqlParameter();
                pDesc.ParameterName = "@Description";
                pDesc.SqlDbType = SqlDbType.VarChar;
                pDesc.Value = b.Description;
                cmd.Parameters.Add(pDesc);


                SqlParameter llid = new SqlParameter();
                llid.ParameterName = "@Active";
                llid.SqlDbType = SqlDbType.Int;
                llid.Value = b.Active;
                cmd.Parameters.Add(llid);

                SqlParameter flag = new SqlParameter();
                flag.ParameterName = "@insupdflag";
                flag.SqlDbType = SqlDbType.VarChar;
                flag.Value = b.insupddelflag;
                //llid.Value = b.Active;
                cmd.Parameters.Add(flag);


                cmd.ExecuteScalar();
                conn.Close();

                //Logger.Trace(LogCategory.WebApp, "SaveType Credentials completed.", LogLevel.Information, null);
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveType() procedure", LogLevel.Error, null);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }
        public void Options() { }

        [HttpGet]
        [Route("api/Types/getstates")]
        public DataTable getstates()
        {
            DataTable dt = new DataTable();
            //connect to database
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ERPS_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spGetUsers";
                cmd.Connection = conn;
                            
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
             
            return dt;
        }

        //[HttpGet]
        //[Route("api/Types/GetCounty")]
        //public DataTable GetCounty(int Id)
        //{
        //    DataTable Tbl = new DataTable();
        //    //connect to database
        //    SqlConnection conn = new SqlConnection();
        //    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.CommandText = "GetCounty";
        //    cmd.Connection = conn;


        //    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = @Id;
        //    SqlDataAdapter db = new SqlDataAdapter(cmd);
        //    db.Fill(Tbl);

        //    return Tbl;
        //}

    }
}

