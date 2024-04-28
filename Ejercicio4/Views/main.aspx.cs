using Ejercicio4.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio4.Views
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTestConnection_Click(object sender, EventArgs e)
        {
            string servidor = txtServer.Value;
            string baseDatos = txtDb.Value;

            ConnectionController contr = new ConnectionController();
            string resultado = contr.ProbarConexion(servidor, baseDatos);

            lblMsg.Text = resultado;
            lblMsg.CssClass = resultado.Contains("Error") ? "text-danger" : "text-success";
        }
    }
}