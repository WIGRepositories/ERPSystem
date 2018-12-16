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
    public class RFQController : ApiController
    {


        [HttpPost]
        [Route("api/RFQ/RFQDoc")]
        public DataSet SaveJobDocs(JobDocuments jdoc)
        {
            //connect to database
            SqlConnection conn = new SqlConnection();
            DataSet dt = new DataSet();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRFQDocs";
                cmd.Connection = conn;
                // conn.Open();              

                #region save job docs
                SqlParameter id = new SqlParameter("@Id", SqlDbType.Int);
                id.Value = (jdoc.Id == 0) ? -1 : jdoc.Id;
                cmd.Parameters.Add(id);

                SqlParameter AssetId = new SqlParameter("@rfqid", SqlDbType.Int);
                AssetId.Value = jdoc.JobId;
                cmd.Parameters.Add(AssetId);

                SqlParameter Gid1 = new SqlParameter("@doctype", SqlDbType.Int);
                Gid1.Value = jdoc.docTypeId;
                cmd.Parameters.Add(Gid1);

                SqlParameter assettypeid = new SqlParameter("@DocName", SqlDbType.VarChar, 100);
                assettypeid.Value = jdoc.docName;
                cmd.Parameters.Add(assettypeid);

                //SqlParameter rootassetid = new SqlParameter("@CreatedBy", SqlDbType.Int);
                //rootassetid.Value = jdoc.createdById;
                //cmd.Parameters.Add(rootassetid);

                //SqlParameter AsstMDLHierarID = new SqlParameter("@UpdatedBy", SqlDbType.Int);
                //AsstMDLHierarID.Value = jdoc.UpdatedById;
                //cmd.Parameters.Add(AsstMDLHierarID);

                SqlParameter assetModelId = new SqlParameter("@ExpiryDate", SqlDbType.Date);
                assetModelId.Value = jdoc.expiryDate;
                cmd.Parameters.Add(assetModelId);


                //SqlParameter LocationId = new SqlParameter("@DueDate", SqlDbType.Date);
                //LocationId.Value = jdoc.dueDate;
                //cmd.Parameters.Add(LocationId);

                SqlParameter parentid = new SqlParameter("@DocContent", SqlDbType.VarChar,-1);
                parentid.Value = jdoc.docContent;
                cmd.Parameters.Add(parentid);

                SqlParameter flag1 = new SqlParameter("@insupdflag", SqlDbType.VarChar);
                flag1.Value = jdoc.insupddelflag;
                cmd.Parameters.Add(flag1);

                SqlParameter loggedinUserId1 = new SqlParameter("@loggedinUserId", SqlDbType.Int);
                loggedinUserId1.Value = jdoc.UpdatedById;
                cmd.Parameters.Add(loggedinUserId1);


                //cmd.ExecuteScalar();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                #endregion save job details


                // conn.Close();
                //Logger.Trace(LogCategory.WebApp, "DataTable in SaveJobDocs() procedure is loaded", LogLevel.Information, null);
                return dt;
            }
            catch (SqlException sqlEx)
            {
                //Logger.Error(sqlEx, LogCategory.WebApp, "An error occured in SaveJobDocs() procedure", LogLevel.Error, null);
                return dt;

            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveJobDocs() procedure", LogLevel.Error, null);
                return dt;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        [HttpGet]
        [Route("api/RFQ/GetRFQDocuments")]
        public DataTable GetRFQDocuments(int rfqid)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQDocuments";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@rfqid", SqlDbType.Int);
                mid.Value = rfqid;
                cmd.Parameters.Add(mid);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                //Logger.Trace(LogCategory.WebApp, "DataTable in GetUsersForJob() procedure is loaded", LogLevel.Information, null);
                return dt;
            }
            catch (Exception ex)
            {
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in GetUsersForJob() procedure", LogLevel.Error, null);
                throw ex;
            }
        }

        [HttpGet]
        [Route("api/RFQ/GetRFQDraftEstimation")]
        public DataTable GetRFQDraftEstimation(int modelId,int rfqId)
        {
            DataTable ds = new DataTable();
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQDraftEstimation";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@modelId", SqlDbType.Int);
                mid.Value = modelId;
                cmd.Parameters.Add(mid);

                SqlParameter jid = new SqlParameter("@rfqId", SqlDbType.Int);
                jid.Value = rfqId;
                cmd.Parameters.Add(jid);


                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(ds);
                //Logger.Trace(LogCategory.WebApp, "DataTable in GetEquipmentForJob() procedure is loaded", LogLevel.Information, null);

                DataTable finalTable = ds.Clone();

                FillDataTable1(finalTable, ds, 0);

                return finalTable;
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
           
        }
        private DataTable FillDataTable1(DataTable finalTable, DataTable ds, int? parentid)
        {
            DataRow[] rows = null;
            if (parentid == 0)
            {
                rows = ds.Select("ParentId is null");
            }
            else
            {
                rows = ds.Select("ParentId=" + parentid);
            }
            foreach (DataRow dr in rows)
            {
                DataRow newdr = finalTable.NewRow();

                newdr["ID"] = dr["ID"];
                newdr["RFQID"] = dr["RFQID"];
                newdr["Name"] = dr["Name"];
                newdr["ParentId"] = dr["ParentId"];
                newdr["isDoc"] = dr["isDoc"];              
                newdr["custId"] = dr["custId"];
                newdr["Client"] = dr["Client"];
                newdr["RowID"] = dr["RowID"];
                newdr["ItemId"] = dr["ItemId"];
                newdr["LEVEL"] = dr["LEVEL"];
                newdr["NoOfUnits"] = dr["NoOfUnits"];
                newdr["DealerUnitPrice"] = dr["DealerUnitPrice"];
                newdr["Email"] = dr["Email"];
                newdr["draftId"] = dr["draftId"];
                newdr["DealerDiscount"] = dr["DealerDiscount"];
                newdr["DealerCharges"] = dr["DealerCharges"];
                newdr["DealerSubTotal"] = dr["DealerSubTotal"];
               
                finalTable.Rows.Add(newdr);
                FillDataTable1(finalTable, ds, (dr["ID"] == DBNull.Value) ? 0 : Convert.ToInt32(dr["ID"]));
            }
            return finalTable;
        }
        [HttpGet]
        [Route("api/RFQ/GetRFQ")]
        public DataTable GetRFQ(int statusid,int custid)
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQ";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@statusId", SqlDbType.Int);
                mid.Value = statusid;
                cmd.Parameters.Add(mid);

                SqlParameter lid = new SqlParameter("@custId", SqlDbType.Int);
                lid.Value = custid;
                cmd.Parameters.Add(lid);


                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetAssets() procedure is loaded", LogLevel.Information, null);
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }


        [HttpGet]
        [Route("api/RFQ/GetRFQwithoutstatus")]
        public DataTable GetRFQwithoutstatus()
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQwithoutstatus";
                cmd.Connection = conn;

                //SqlParameter mid = new SqlParameter("@statusId", SqlDbType.Int);
                //mid.Value = statusid;
                //cmd.Parameters.Add(mid);

                //SqlParameter lid = new SqlParameter("@custId", SqlDbType.Int);
                //lid.Value = custid;
                //cmd.Parameters.Add(lid);


                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetAssets() procedure is loaded", LogLevel.Information, null);
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }

        [HttpGet]
        [Route("api/RFQ/GetRFQPersonnal")]
        public DataTable GetRFQPersonnal(int customerId)
        {
            DataTable Tbl = new DataTable();
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQPersonnal";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@Id", SqlDbType.Int);
                mid.Value = customerId;
                cmd.Parameters.Add(mid);

                //SqlParameter lid = new SqlParameter("@locationId", SqlDbType.Int);
                //lid.Value = locationId;
                //cmd.Parameters.Add(lid);


                SqlDataAdapter db = new SqlDataAdapter(cmd);

                db.Fill(Tbl);
                //Tbl = ds.Tables[0];

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetAssets() procedure is loaded", LogLevel.Information, null);
            }
            catch (Exception ex)
            {
                throw ex;//Logger.Error(ex, LogCategory.WebApp, "An error occured in GetAssets() procedure", LogLevel.Error, null);
            }
            // int found = 0;
            return Tbl;
        }

        [HttpPost]
        [Route("api/RFQ/SaveRFQDetails")]
        public DataTable SaveRFQDetails(RFQItems a)
        {
            DataTable dt = new DataTable();
            //connect to database
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "spRFQ";
                cmd.Connection = conn;
                conn.Open();
                //  @name varchar(50),@desc varchar(250)=null,@assettypeid int,@parentid int=null
                //  ,@rootassetid int=-1,@change char(1),@id int=null,@assetModelId int

                SqlParameter RFQId = new SqlParameter("@RFQId", SqlDbType.VarChar, 15);
                RFQId.Value = a.RFQId;
                cmd.Parameters.Add(RFQId);

                SqlParameter Gid = new SqlParameter("@flag", SqlDbType.VarChar, 50);
                Gid.Value = a.flag;
                cmd.Parameters.Add(Gid);

                SqlParameter loggedinUserId = new SqlParameter("@Id", SqlDbType.Int);
                loggedinUserId.Value = a.Id;
                cmd.Parameters.Add(loggedinUserId);

                SqlParameter desc = new SqlParameter("@Name", SqlDbType.VarChar,50);
                desc.Value = a.Name;
                cmd.Parameters.Add(desc);

                SqlParameter assettypeid = new SqlParameter("@Status", SqlDbType.Int);
                assettypeid.Value = a.Status;
                cmd.Parameters.Add(assettypeid);

                SqlParameter parentid = new SqlParameter("@CustomerId", SqlDbType.Int);
                parentid.Value = a.CustomerId;
                cmd.Parameters.Add(parentid);

                SqlParameter cmm = new SqlParameter("@ComTypeId", SqlDbType.Int);
                cmm.Value = a.CmTypeId;
                cmd.Parameters.Add(cmm);

                SqlParameter smm = new SqlParameter("@SmId", SqlDbType.Int);
                smm.Value = a.SmId;
                cmd.Parameters.Add(smm);

                SqlParameter Desc = new SqlParameter("@Description", SqlDbType.VarChar,250);
                Desc.Value = a.Description;
                cmd.Parameters.Add(Desc);

                SqlParameter CPhoneNo = new SqlParameter("@CustomerPhoneno", SqlDbType.VarChar,20);
                CPhoneNo.Value = a.CPhoneNo;
                cmd.Parameters.Add(CPhoneNo);

                SqlParameter CEmail = new SqlParameter("@CustomerEmail", SqlDbType.VarChar,50);
                CEmail.Value = a.CEmail;
                cmd.Parameters.Add(CEmail);

                SqlParameter CFax = new SqlParameter("@CustomerFaxno", SqlDbType.VarChar,50);
                CFax.Value = a.CFax;
                cmd.Parameters.Add(CFax);

                SqlParameter cgbgg = new SqlParameter("@changedById", SqlDbType.Int);
                cgbgg.Value = a.changedById;
                cmd.Parameters.Add(cgbgg);


                SqlDataAdapter ds = new SqlDataAdapter(cmd);
                ds.Fill(dt);                        
            }
            catch (Exception ex)
            {                
               throw ex;               
            }
            return dt;
        }

        [HttpGet]
        [Route("api/RFQ/GetRFQDetails")]
        public DataSet GetRFQDetails(int rfqId)
        {
            try
            {
                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQDetails";
                cmd.Connection = conn;

                SqlParameter Gim = new SqlParameter("@id", SqlDbType.Int);
                Gim.Value =rfqId;
                cmd.Parameters.Add(Gim);

                DataSet ds = new DataSet();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(ds);

                //Logger.Trace(LogCategory.WebApp, "DataTable in GetjobsDetails() procedure is loaded", LogLevel.Information, null);
                // int found = 0;
                return ds;
            }
            catch (Exception ex)
            {
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in GetJobsList() procedure", LogLevel.Error, null);
                throw ex;
            }
        }

        [HttpGet]
        [Route("api/RFQ/GetItemModels")]
        public DataTable GetItemModels()
        {
            DataTable Tbl = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                //connect to database
                //SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetItemModels";
                cmd.Connection = conn;

                //SqlParameter Gid = new SqlParameter();
                //Gid.ParameterName = "@locationid";
                //Gid.SqlDbType = SqlDbType.Int;
                //Gid.Value = (locId == 0) ? -1 : locId;
                //cmd.Parameters.Add(Gid);




                //  DataSet ds = new DataSet();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(Tbl);
                //Logger.Trace(LogCategory.WebApp, "SaveAssetModel() procedure executed successfully.", LogLevel.Information, null);

            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveAssetModel() procedure", LogLevel.Error, null);
                throw ex;
            }
            return Tbl;
        }

        [HttpGet]
        [Route("api/RFQ/GetItemsForRFQ")]
        public DataTable GetItemsForRFQ(int modelId,int rfqId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRFQItems_wip2";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@modelId", SqlDbType.Int);
                mid.Value = modelId;
                cmd.Parameters.Add(mid);                

                SqlParameter jid = new SqlParameter("@rfqId", SqlDbType.Int);
                jid.Value = rfqId;
                cmd.Parameters.Add(jid);

               
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(ds);
                //Logger.Trace(LogCategory.WebApp, "DataTable in GetEquipmentForJob() procedure is loaded", LogLevel.Information, null);

                DataTable finalTable = ds.Clone();

                FillDataTable(finalTable, ds, 0);

                return finalTable;
            }
            catch (Exception ex)
            {
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in GetEquipmentForJob() procedure", LogLevel.Error, null);
                throw ex;
            }
        }

        private DataTable FillDataTable(DataTable finalTable, DataTable ds, int? parentid) {
            DataRow[] rows = null;
            if (parentid == 0) {
                rows = ds.Select("ParentId is null");
            }
            else {
             rows = ds.Select("ParentId=" + parentid);
            }
            foreach (DataRow dr in rows){
                DataRow newdr = finalTable.NewRow();

                newdr["ID"] = dr["ID"];
                newdr["RFQID"] = dr["RFQID"];
                newdr["Name"] = dr["Name"];
                newdr["ParentId"] = dr["ParentId"];
                newdr["isDoc"] = dr["isDoc"];               
                newdr["fromdate"] = dr["fromdate"];
                newdr["todate"] = dr["todate"];
                newdr["custId"] = dr["custId"];
                newdr["Client"] = dr["Client"];
                newdr["RowID"] = dr["RowID"];
                newdr["ItemId"] = dr["ItemId"]; 
                 newdr["LEVEL"] = dr["LEVEL"];
                newdr["RFQid2"] = dr["RFQid2"];
                newdr["Email"] = dr["Email"];
                newdr["InitialQuantity"] = dr["InitialQuantity"];

                finalTable.Rows.Add(newdr);
                FillDataTable(finalTable, ds, (dr["ID"] == DBNull.Value)? 0 : Convert.ToInt32(dr["ID"]));
                    }
            return finalTable;
        }


        [HttpPost]
        [Route("api/RFQ/SaveRFQItem")]
        public DataSet SaveRFQItem(RFQResouces jres)
        {
            //connect to database
            SqlConnection conn = new SqlConnection();
            DataSet dt = new DataSet();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRFQResources";
                cmd.Connection = conn;
                conn.Open();

                #region save job equipment
                //@Id int,@JobId int,@UserId int,@CreatedBy int,@UpdatedBy int,@FromDate date = null, @ToDate date = null,@insupdflag varchar(1)
                SqlParameter ba = new SqlParameter("@Id", SqlDbType.Int);
                ba.Value = jres.Id;
                cmd.Parameters.Add(ba);

                SqlParameter jid = new SqlParameter("@RFQId", SqlDbType.Int);
                jid.Value = jres.RFQId;
                cmd.Parameters.Add(jid);

                SqlParameter sid = new SqlParameter("@Sequence", SqlDbType.Int);
                sid.Value = jres.Sequence;
                cmd.Parameters.Add(sid);


                SqlParameter bb = new SqlParameter("@ItemId", SqlDbType.Int);
                bb.Value = jres.ItemId;
                cmd.Parameters.Add(bb);

                SqlParameter bd = new SqlParameter("@CreatedBy", SqlDbType.Int);
                bd.Value = jres.createdById;
                cmd.Parameters.Add(bd);


                SqlParameter bf = new SqlParameter("@UpdatedBy", SqlDbType.Int);
                bf.Value = jres.UpdatedById;
                cmd.Parameters.Add(bf);

                SqlParameter bh = new SqlParameter("@FromDate", SqlDbType.Date);
                bh.Value = jres.FromDate;
                cmd.Parameters.Add(bh);

                SqlParameter ipconfig = new SqlParameter("@ToDate", SqlDbType.Date);
                ipconfig.Value = jres.ToDate;
                cmd.Parameters.Add(ipconfig);

                SqlParameter insupdflag = new SqlParameter("@insupdflag", SqlDbType.VarChar, 1);
                insupdflag.Value = (jres.insupddelflag == null) ? "" : jres.insupddelflag;
                cmd.Parameters.Add(insupdflag);



                SqlParameter loggedinUserId1 = new SqlParameter("@loggedinUserId", SqlDbType.Int);
                loggedinUserId1.Value = jres.UpdatedById;
                cmd.Parameters.Add(loggedinUserId1);


                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                #endregion save job equipment


                // conn.Close();
                //Logger.Trace(LogCategory.WebApp, "DataTable in SaveJobEquipement() procedure is loaded", LogLevel.Information, null);
                return dt;
            }
            catch (SqlException sqlEx)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                //Logger.Error(sqlEx, LogCategory.WebApp, "An error occured in SaveJobEquipement() procedure", LogLevel.Error, null);
                // return dt;
                throw sqlEx;
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SavejobsList() procedure", LogLevel.Error, null);
                throw ex;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }


        [HttpGet]
        [Route("api/RFQ/GetUsersForRFQ")]
        public DataTable GetUsersForRFQ(int jobId)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetUsersForRFQ";
                cmd.Connection = conn;

                SqlParameter mid = new SqlParameter("@jobId", SqlDbType.Int);
                mid.Value = jobId;
                cmd.Parameters.Add(mid);

                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                //Logger.Trace(LogCategory.WebApp, "DataTable in GetUsersForJob() procedure is loaded", LogLevel.Information, null);
                return dt;
            }
            catch (Exception ex)
            {
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in GetUsersForJob() procedure", LogLevel.Error, null);
                throw ex;
            }
        }

        [HttpPost]
        [Route("api/RFQ/SaveRFQUsers")]
        public DataSet SaveRFQUsers(RFQUsers u)
        {
            //connect to database
            SqlConnection conn = new SqlConnection();
            DataSet dt = new DataSet();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRFQUsers";
                cmd.Connection = conn;
                conn.Open();

                #region save job users
                //@Id int,@JobId int,@UserId int,@CreatedBy int,@UpdatedBy int,@FromDate date = null, @ToDate date = null,@insupdflag varchar(1)
                SqlParameter ba = new SqlParameter("@Id", SqlDbType.Int);
                ba.Value = u.Id;
                cmd.Parameters.Add(ba);

                SqlParameter jid = new SqlParameter("@RFQId", SqlDbType.Int);
                jid.Value = u.RFQId;
                cmd.Parameters.Add(jid);

                SqlParameter bb = new SqlParameter("@UserId", SqlDbType.Int);
                bb.Value = u.UserId;
                cmd.Parameters.Add(bb);

                SqlParameter bd = new SqlParameter("@CreatedBy", SqlDbType.Int);
                bd.Value = u.CreatedById;
                cmd.Parameters.Add(bd);


                SqlParameter bf = new SqlParameter("@UpdatedBy", SqlDbType.Int);
                bf.Value = u.UpdatedById;
                cmd.Parameters.Add(bf);

                SqlParameter bh = new SqlParameter("@FromDate", SqlDbType.Date);
                bh.Value = u.FromDate;
                cmd.Parameters.Add(bh);

                SqlParameter ipconfig = new SqlParameter("@ToDate", SqlDbType.Date);
                ipconfig.Value = u.ToDate;
                cmd.Parameters.Add(ipconfig);

                SqlParameter sj = new SqlParameter("@Sequence", SqlDbType.Int);
                sj.Value = u.Sequence;
                cmd.Parameters.Add(sj);

                SqlParameter insupdflag = new SqlParameter("@insupdflag", SqlDbType.VarChar, 1);
                insupdflag.Value = (u.insupddelflag == null) ? "" : u.insupddelflag;
                cmd.Parameters.Add(insupdflag);

                //SqlParameter loggedinUserId1 = new SqlParameter("@loggedinUserId", SqlDbType.Int);
                //loggedinUserId1.Value = u.UpdatedById;
                //cmd.Parameters.Add(loggedinUserId1);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);


                #endregion save job details


                // conn.Close();
                //Logger.Trace(LogCategory.WebApp, "DataTable in SaveJobUsers() procedure is loaded", LogLevel.Information, null);
                return dt;
            }
            catch (SqlException sqlEx)
            {
                //Logger.Error(sqlEx, LogCategory.WebApp, "An error occured in SaveJobUsers() procedure", LogLevel.Error, null);
                return dt;

            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;

                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveJobUsers() procedure", LogLevel.Error, null);
                return dt;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }
        }

        [HttpPost]
        [Route("api/RFQ/RFQSaveSupplierslist")]
        public void SaveSupplierslist(List<RFQSupplier> list)
        {
            DataTable dt = new DataTable();
                SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                //@Client varchar(150),@Contact varchar(100),@Email varchar(50),@PhoneNo varchar(15),@Active int,@ContactRole varchar(100),@ServiceDescription varchar(100)
                //,@PTSPOCId int,@flag char,@ID int=null

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRFQSuppliers";
                cmd.Connection = conn;
                conn.Open();
                foreach (RFQSupplier m in list)
                {

                    SqlParameter sid = new SqlParameter("@Sname", SqlDbType.Int);
                    sid.Value = m.Id;
                    cmd.Parameters.Add(sid);


                    SqlParameter bb = new SqlParameter("@rfqcode", SqlDbType.VarChar,50);
                    bb.Value = m.RFQID;
                    cmd.Parameters.Add(bb);

                    SqlParameter b = new SqlParameter("@Itemname", SqlDbType.Int);
                    b.Value = m.ItemId;
                    cmd.Parameters.Add(b);

                    SqlParameter f= new SqlParameter("@flag", SqlDbType.VarChar);
                    f.Value = m.flag;
                    cmd.Parameters.Add(f);
                    

                    // cmd.Parameters.Add(new SqlParameter("@Name", SqlDbType.VarChar, 50,m.Client));
                    //cmd.Parameters.Add(new SqlParameter("@Itemname", SqlDbType.VarChar, 50, m.Itemname));
                    cmd.ExecuteScalar();
                    cmd.Parameters.Clear();
                }


              
                //Logger.Trace(LogCategory.WebApp, "InsUpdCustomer stored procedure is executed successfully", LogLevel.Information, null);

              
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveCustomers() procedure", LogLevel.Error, null);
               // return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
           
        }

        [HttpPost]
        [Route("api/RFQ/SaveRFQDrafEstimation")]
        public void SaveRFQDrafEstimation(List<RFQSupplier> list)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection();
            try
            {
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();
                //@Client varchar(150),@Contact varchar(100),@Email varchar(50),@PhoneNo varchar(15),@Active int,@ContactRole varchar(100),@ServiceDescription varchar(100)
                //,@PTSPOCId int,@flag char,@ID int=null

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelRFQDraftEstimation";
                cmd.Connection = conn;
                conn.Open();
                foreach (RFQSupplier m in list)
                {
                     SqlParameter ut = new SqlParameter("@unit", SqlDbType.Int);
                    ut.Value = m.unit;
                    cmd.Parameters.Add(ut);

                    SqlParameter up = new SqlParameter("@unitprice", SqlDbType.Int);
                    up.Value = m.unitprice;
                    cmd.Parameters.Add(up);

                    SqlParameter st = new SqlParameter("@subtotal", SqlDbType.Int);
                    st.Value = m.subtotal;
                    cmd.Parameters.Add(st);

                    SqlParameter sn = new SqlParameter("@supid", SqlDbType.Int);
                    sn.Value = m.supid;
                    cmd.Parameters.Add(sn);
                    
                    SqlParameter rcode = new SqlParameter("@rfqid", SqlDbType.Int);
                    rcode.Value = m.RFQID;
                    cmd.Parameters.Add(rcode);

                    SqlParameter iname = new SqlParameter("@ItemId", SqlDbType.Int);
                    iname.Value = m.ItemId;
                    cmd.Parameters.Add(iname);

                    SqlParameter f = new SqlParameter("@flag", SqlDbType.VarChar);
                    f.Value = m.flag;
                    cmd.Parameters.Add(f);

                    cmd.ExecuteScalar();
                    cmd.Parameters.Clear();
                }



                //Logger.Trace(LogCategory.WebApp, "InsUpdCustomer stored procedure is executed successfully", LogLevel.Information, null);


            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                //Logger.Error(ex, LogCategory.WebApp, "An error occured in SaveCustomers() procedure", LogLevel.Error, null);
                // return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }

        }
    }

}
