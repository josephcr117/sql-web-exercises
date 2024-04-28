using Ejercicio1.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio1.Views
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCrearTabla_Click(object sender, EventArgs e)
        {
            EjercicioController contr = new EjercicioController();
            string mensaje = contr.CreateTable(txtTableName.Text.Trim(), txtColumnName.Text.Trim());

            lblMensaje.Text = mensaje;
            lblMensaje.CssClass = mensaje.Contains("Error") ? "text-danger" : "text-success";
        }
    }
}