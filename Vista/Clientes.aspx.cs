using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Vista_Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnNuevoCliente_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarCliente.aspx");
    }
    protected void BtnModificarCliente_Click(object sender, EventArgs e)
    {
      Response.Redirect("AgregarCliente.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AgregarCliente.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("FichaCliente.aspx");
    }
}