using Ejercicio3.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio3.Views
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TableController contr = new TableController();
                contr.LoadTable(dropDownTable);
            }
        }

        protected void btnDropTable_Click(object sender, EventArgs e)
        {
            string selectedTable = dropDownTable.SelectedValue;
            TableController contr = new TableController();
            string mensaje = contr.DropTable(selectedTable);
            lblMsg.Text = mensaje;

            // me devuelve el valor default de ListItem
            dropDownTable.SelectedIndex = 0;

            // me borra el valor seleccionado y me carga la lista sin el seleccionado, hice un != "" para que no me borrara el valor default
            if (selectedTable != "")
            {
                ListItem itemToRemove = dropDownTable.Items.FindByValue(selectedTable);
                if (itemToRemove != null)
                {
                    dropDownTable.Items.Remove(itemToRemove);
                }
            }
        }
    }
}