//===============================================================================
// This file is based on the Microsoft Data Access Application Block for .NET
// For more information please go to 
// http://msdn.microsoft.com/library/en-us/dnbda/html/daab-rm.asp
//===============================================================================
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace DAL
{

    /// <summary>
    /// The SqlHelper class is intended to encapsulate high performance, 
    /// scalable best practices for common uses of SqlClient.
    /// </summary>

    public abstract class SqlHelper
    {

        //Database connection strings
		
        public static readonly string strConnectionString =ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        public static SqlConnection cnn;
        /// <summary>
        ///打开数据库连接
        /// </summary>
        public void Open()
        {
            if (cnn == null)
            {
                cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);

            }
            if (cnn.State == ConnectionState.Closed)
            {
                try
                {
                    cnn.Open();
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }

            }
        }

        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        public void close()
        {
            if (cnn != null)
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }

        }
        /// <summary>
        /// 释放资源
        /// </summary>
        public void Dispose()
        {
            // 确认连接是否已经关闭
            if (cnn != null)
            {
                cnn.Dispose();

                cnn = null;
            }
        }

        public SqlHelper()
        {
            //strConnectionString = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
        }
        // Hashtable to store cached parameters
        private static Hashtable parmCache = Hashtable.Synchronized(new Hashtable());

        /// <summary>
        /// Execute a SqlCommand (that returns no resultset) against the database specified in the connection string 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  int result = ExecuteNonQuery(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="connectionString">a valid connection string for a SqlConnection</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>an int representing the number of rows affected by the command</returns>
        public static int ExecuteNonQuery(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {

            SqlCommand cmd = new SqlCommand();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                int val = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return val;
            }
        }

        public static int ExecuteNonQuery(string connectionString, string cmdText)
        {

            SqlCommand cmd = new SqlCommand();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                cmd.CommandText = cmdText;
                cmd.CommandType = CommandType.Text;
                cmd.Connection = conn;
                conn.Open();
                int val = cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                return val;
            }
        }

        /// <summary>
        /// Execute a SqlCommand (that returns no resultset) against an existing database connection 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  int result = ExecuteNonQuery(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="conn">an existing database connection</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>an int representing the number of rows affected by the command</returns>
        public static int ExecuteNonQuery(SqlConnection connection, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {

            SqlCommand cmd = new SqlCommand();

            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            int val = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return val;
        }

        /// <summary>
        /// Execute a SqlCommand (that returns no resultset) using an existing SQL Transaction 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  int result = ExecuteNonQuery(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="trans">an existing sql transaction</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>an int representing the number of rows affected by the command</returns>
        public static int ExecuteNonQuery(SqlTransaction trans, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {
            SqlCommand cmd = new SqlCommand();
            PrepareCommand(cmd, trans.Connection, trans, cmdType, cmdText, commandParameters);
            int val = cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            return val;
        }


        public static int ExecuteNonQuery(string query)
        {
            cnn = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand(query, cnn);
            if (query.StartsWith("INSERT") | query.StartsWith("insert") | query.StartsWith("UPDATE") | query.StartsWith("update") | query.StartsWith("DELETE") | query.StartsWith("delete"))
            {
                cmd.CommandType = CommandType.Text;
            }
            else
            {
                cmd.CommandType = CommandType.StoredProcedure;
            }
            int retval;
            try
            {
                cnn.Open();
                retval = cmd.ExecuteNonQuery();
            }
            catch (Exception exp)
            {
                throw exp;
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }
            return retval;
        }

        public static int ExecuteNonQuery(string query, params SqlParameter[] parameters)
        {
            cnn = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand(query, cnn);
            if (query.StartsWith("INSERT") | query.StartsWith("insert") | query.StartsWith("UPDATE") | query.StartsWith("update") | query.StartsWith("DELETE") | query.StartsWith("delete"))
            {
                cmd.CommandType = CommandType.Text;
            }
            else
            {
                cmd.CommandType = CommandType.StoredProcedure;
            }
            for (int i = 0; i <= parameters.Length - 1; i++)
            {
                cmd.Parameters.Add(parameters[i]);
            }
            cnn.Open();
            int retval = cmd.ExecuteNonQuery();
            cnn.Close();
            return retval;
        }

        public static object ExecuteScalar(string query)
        {
            cnn = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand(query, cnn);
            if (query.StartsWith("SELECT") | query.StartsWith("select"))
            {
                cmd.CommandType = CommandType.Text;
            }
            else
            {
                cmd.CommandType = CommandType.StoredProcedure;
            }
            cnn.Open();
            object retval = cmd.ExecuteNonQuery();
            cnn.Close();
            return retval;
        }

        public static object ExecuteScalar(string query, params SqlParameter[] parameters)
        {
            cnn = new SqlConnection(strConnectionString);
            SqlCommand cmd = new SqlCommand(query, cnn);
            if (query.StartsWith("SELECT") | query.StartsWith("select"))
            {
                cmd.CommandType = CommandType.Text;
            }
            else
            {
                cmd.CommandType = CommandType.StoredProcedure;
            }
            for (int i = 0; i <= parameters.Length - 1; i++)
            {
                cmd.Parameters.Add(parameters[i]);
            }
            cnn.Open();
            object retval = cmd.ExecuteScalar();
            cnn.Close();
            return retval;
        }


        /// <summary>
        /// Execute a SqlCommand that returns a resultset against the database specified in the connection string 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  SqlDataReader r = ExecuteReader(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="connectionString">a valid connection string for a SqlConnection</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>A SqlDataReader containing the results</returns>
        public static SqlDataReader ExecuteReader(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(connectionString);

            // we use a try/catch here because if the method throws an exception we want to 
            // close the connection throw code, because no datareader will exist, hence the 
            // commandBehaviour.CloseConnection will not work
            try
            {
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                //cmd.Parameters.Clear();
                return rdr;
            }
            catch
            {
                conn.Close();
                throw;
            }
        }

        /// <summary>
        /// Execute a SqlCommand that returns the first column of the first record against the database specified in the connection string 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  Object obj = ExecuteScalar(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="connectionString">a valid connection string for a SqlConnection</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>An object that should be converted to the expected type using Convert.To{Type}</returns>
        public static object ExecuteScalar(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {
            SqlCommand cmd = new SqlCommand();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                object val = cmd.ExecuteScalar();
                cmd.Parameters.Clear();
                return val;
            }
        }

        /// <summary>
        /// Execute a SqlCommand that returns the first column of the first record against an existing database connection 
        /// using the provided parameters.
        /// </summary>
        /// <remarks>
        /// e.g.:  
        ///  Object obj = ExecuteScalar(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
        /// </remarks>
        /// <param name="conn">an existing database connection</param>
        /// <param name="commandType">the CommandType (stored procedure, text, etc.)</param>
        /// <param name="commandText">the stored procedure name or T-SQL command</param>
        /// <param name="commandParameters">an array of SqlParamters used to execute the command</param>
        /// <returns>An object that should be converted to the expected type using Convert.To{Type}</returns>
        public static object ExecuteScalar(SqlConnection connection, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {

            SqlCommand cmd = new SqlCommand();
            
            PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
            object val = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            return val;
        }

        /// <summary>
        /// add parameter array to the cache
        /// </summary>
        /// <param name="cacheKey">Key to the parameter cache</param>
        /// <param name="cmdParms">an array of SqlParamters to be cached</param>
        public static void CacheParameters(string cacheKey, params SqlParameter[] commandParameters)
        {
            parmCache[cacheKey] = commandParameters;
        }

        /// <summary>
        /// Retrieve cached parameters
        /// </summary>
        /// <param name="cacheKey">key used to lookup parameters</param>
        /// <returns>Cached SqlParamters array</returns>
        public static SqlParameter[] GetCachedParameters(string cacheKey)
        {
            SqlParameter[] cachedParms = (SqlParameter[])parmCache[cacheKey];

            if (cachedParms == null)
                return null;

            SqlParameter[] clonedParms = new SqlParameter[cachedParms.Length];

            for (int i = 0, j = cachedParms.Length; i < j; i++)
                clonedParms[i] = (SqlParameter)((ICloneable)cachedParms[i]).Clone();

            return clonedParms;
        }

        /// <summary>
        /// Prepare a command for execution
        /// </summary>
        /// <param name="cmd">SqlCommand object</param>
        /// <param name="conn">SqlConnection object</param>
        /// <param name="trans">SqlTransaction object</param>
        /// <param name="cmdType">Cmd type e.g. stored procedure or text</param>
        /// <param name="cmdText">Command text, e.g. Select * from Products</param>
        /// <param name="cmdParms">SqlParameters to use in the command</param>
        private static void PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, CommandType cmdType, string cmdText, SqlParameter[] cmdParms)
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();

            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            if (trans != null)
                cmd.Transaction = trans;

            cmd.CommandType = cmdType;

            if (cmdParms != null)
            {
                foreach (SqlParameter parm in cmdParms)
                    cmd.Parameters.Add(parm);
            }
        }

        //_______________________________________________________addition___________________________________
        public static DataSet ExecuteDataSet(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection conn = new SqlConnection(connectionString);

            // we use a try/catch here because if the method throws an exception we want to 
            // close the connection throw code, because no datareader will exist, hence the 
            // commandBehaviour.CloseConnection will not work
            try
            {
                
                //SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                //cmd.Parameters.Clear();
                PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return ds;
            }
            catch
            {
                conn.Close();
                throw;
            }
        }
    }
}