using Ejercicio2.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio2.Views
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRunQuery_Click(object sender, EventArgs e)
        {
            string query = txtQuery.Value;
            QueryController contr = new QueryController();
            string resultado = contr.RunQuery(query);
            lblResult.Text = resultado;
        }
    }
}