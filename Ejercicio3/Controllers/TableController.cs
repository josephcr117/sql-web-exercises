using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Ejercicio3.Controllers
{
    public class TableController
    {
        string connectionString = "Data Source=NELA;Initial Catalog=Ejercicio3;Integrated Security=True";

        public void LoadTable(DropDownList dropDownTable)
        {
            string query = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string table = reader["TABLE_NAME"].ToString();
                            dropDownTable.Items.Add(new ListItem(table, table));
                        }
                    }
                }
            }
        }

        public string DropTable(string selectedTable)
        {
            string query = "DROP TABLE " + selectedTable;

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        return "The Table '" + selectedTable + "' has been dropped successfully.";
                    }
                }
            }
            catch (Exception ex)
            {
                return "Error: " + ex.Message;
            }
        }
    }
}