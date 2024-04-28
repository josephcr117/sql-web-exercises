using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ejercicio2.Controllers
{
    public class QueryController
    {
        public string RunQuery(string query)
        {
            string connectionString = "Data Source=NELA;Initial Catalog=Ejercicio2;Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.ExecuteNonQuery();
                        return "El Query SQL se ejecutó correctamente.";
                    }
                }
            }
            catch (Exception ex)
            {
                return "Error al ejecutar el Query SQL: " + ex.Message;
            }
        }
    }
}