using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Menu : System.Web.UI.Page
{

   
   

    protected void Page_Load(object sender, EventArgs e)
    {

      
        if (Request.Params["parametro"] != null)
        {
            Label4.Text = Request.Params["parametro"];
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void BtnClientes_Click(object sender, EventArgs e)
    {
        Response.Redirect("Usuarios.aspx");
    }
    protected void BtnGestionClientes_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Clientes.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Clientes.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Usuarios.aspx");
    }

    
}