﻿using ERPSystem;
using ERPSystem.Models;
//using SmartTicketDashboard.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Tracing;

namespace ERPSystem.Controllers
{
   
        public class InventoryItemController : ApiController
        {

        [HttpGet]
        [Route("api/InventoryItem/Getitems")]
        public DataTable Getitems()
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
                cmd.CommandText = "GetItems";
                cmd.Connection = conn;

                //SqlParameter mid = new SqlParameter("@Id", SqlDbType.Int);
                //mid.Value = customerId;
                //cmd.Parameters.Add(mid);

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

        public DataTable GetInventoryItem(int subCatId)
            {
                DataTable Tbl = new DataTable();

                LogTraceWriter traceWriter = new LogTraceWriter();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetInventoryItem ....");


                //connect to database
                SqlConnection conn = new SqlConnection();
                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInventoryItem";
                cmd.Connection = conn;

                SqlParameter Gid = new SqlParameter();
                Gid.ParameterName = "@subCatId";
                Gid.SqlDbType = SqlDbType.Int;
                Gid.Value = subCatId;
                cmd.Parameters.Add(Gid);

                DataSet ds = new DataSet();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(ds);
                Tbl = ds.Tables[0];
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetInventoryItem completed.");
                // int found = 0;
                return Tbl;
            }
            [HttpPost]
            public HttpResponseMessage SaveinventoryItem(InventoryItem b)
            {

                LogTraceWriter traceWriter = new LogTraceWriter();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveinventoryItem ...");
                SqlConnection conn = new SqlConnection();
                try
                {

                    //connect to database

                    //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["EES_DB_ConnectionString"].ToString();

                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "InsupdDelInventoryItem";
                    cmd.Connection = conn;
                    conn.Open();

                    SqlParameter Cid = new SqlParameter();
                    Cid.ParameterName = "@Id";
                    Cid.SqlDbType = SqlDbType.Int;
                    Cid.Value = b.Id;
                    cmd.Parameters.Add(Cid);

                    SqlParameter Gid = new SqlParameter();
                    Gid.ParameterName = "@ItemName";
                    Gid.SqlDbType = SqlDbType.VarChar;
                    Gid.Value = b.ItemName;
                    cmd.Parameters.Add(Gid);

                    SqlParameter li = new SqlParameter();
                    li.ParameterName = "@ItemImage";
                    li.SqlDbType = SqlDbType.VarChar;
                    li.Value = b.ItemImage;
                    cmd.Parameters.Add(li);

                    SqlParameter lid = new SqlParameter();
                    lid.ParameterName = "@Code";
                    lid.SqlDbType = SqlDbType.VarChar;
                    lid.Value = b.Code;
                    cmd.Parameters.Add(lid);

                    SqlParameter pDesc = new SqlParameter();
                    pDesc.ParameterName = "@Description";
                    pDesc.SqlDbType = SqlDbType.VarChar;
                    pDesc.Value = b.Description;
                    cmd.Parameters.Add(pDesc);

                    SqlParameter lAct = new SqlParameter();
                    lAct.ParameterName = "@CategoryId";
                    lAct.SqlDbType = SqlDbType.Int;
                    lAct.Value = b.Category;
                    //llid.Value = b.Active;
                    cmd.Parameters.Add(lAct);
                    SqlParameter psub = new SqlParameter();
                    psub.ParameterName = "@SubCategoryId";
                    psub.SqlDbType = SqlDbType.Int;
                    psub.Value = b.SubCategory;
                    cmd.Parameters.Add(psub);

                    SqlParameter prop = new SqlParameter();
                    prop.ParameterName = "@ReOrderPoint";
                    prop.SqlDbType = SqlDbType.Int;
                    prop.Value = b.ReOrderPoint;
                    cmd.Parameters.Add(prop);

                    SqlParameter pp = new SqlParameter();
                    pp.ParameterName = "@Price";
                    pp.SqlDbType = SqlDbType.Decimal;
                    pp.Value = b.price;
                    cmd.Parameters.Add(pp);

                    SqlParameter ir = new SqlParameter();
                    ir.ParameterName = "@ItemModel";
                    ir.SqlDbType = SqlDbType.VarChar;
                    ir.Value = b.Itemmodel;
                    cmd.Parameters.Add(ir);

                    SqlParameter f = new SqlParameter();
                    f.ParameterName = "@Features";
                    f.SqlDbType = SqlDbType.VarChar;
                    f.Value = b.features;
                    cmd.Parameters.Add(f);

                    SqlParameter q = new SqlParameter();
                q.ParameterName = "@InitialQuantity";
                q.SqlDbType = SqlDbType.Decimal;
                q.Value = b.InitialQuantity;
                    cmd.Parameters.Add(q);


                    cmd.ExecuteScalar();
                    conn.Close();

                    traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveinventoryItem completed.");
                    return new HttpResponseMessage(HttpStatusCode.OK);
                }
                catch (Exception ex)
                {
                    if (conn != null && conn.State == ConnectionState.Open)
                    {
                        conn.Close();
                    }
                    string str = ex.Message;
                    traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveinventoryItem:" + ex.Message);
                    return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
                }
            }
        public void Options() { }
        }
    }
