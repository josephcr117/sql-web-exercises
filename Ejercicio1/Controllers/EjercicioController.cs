using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ejercicio1.Controllers
{
    public class EjercicioController
    {
        public string CreateTable(string nombreTabla, string nombresCampos)
        {
            string connectionString = "Data Source=NELA;Initial Catalog=Ejercicio1;Integrated Security=True";

            if (!string.IsNullOrEmpty(nombreTabla) && !string.IsNullOrEmpty(nombresCampos))
            {
                string[] campos = nombresCampos.Split(',');

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    try
                    {
                        connection.Open();
                        string query = "CREATE TABLE " + nombreTabla + " (";

                        foreach (string campo in campos)
                        {
                            query += campo.Trim() + " VARCHAR(50), ";
                        }

                        query = query.TrimEnd(',', ' ') + ")";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.ExecuteNonQuery();

                        return "Table has been created successfully.";
                    }
                    catch (Exception ex)
                    {
                        return "Error: " + ex.Message;
                    }
                }
            }
            else
            {
                return "Please enter the name of your table along with one column name.";
            }
        }
    }
}