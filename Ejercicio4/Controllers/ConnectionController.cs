using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ejercicio4.Controllers
{
    public class ConnectionController
    {
        public string ProbarConexion(string servidor, string baseDatos)
        {
            string connectionString = $"Data Source={servidor};Initial Catalog={baseDatos};Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    return "Connection Successful!";
                }
            }
            catch (Exception ex)
            {
                return "Error: " + ex.Message;
            }
        }
    }
}