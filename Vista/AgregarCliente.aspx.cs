using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_AgregarUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void limpiar()
    {
        TxtIdentificacion.Text = "";
        TxtPrimerNombre.Text = "";
        TxtPrimerApellido.Text = "";
        TxtSegundoNombre.Text = "";
        TxtPrimerApellido.Text = " ";
        TxtSegundoApellido.Text = " ";
        DDlTipoIdentificacion.Text = "SELECCIONE EL TIPO DE IDENTIFICACIÓN";
        TxtTelefono.Text = " ";
        TxtCelular.Text = " ";
        TxtEmail.Text = " ";
        DDlClasificacion.Text = "SELECCIONE LA CLASIFICACIÓN";
        


    }

    //protected void BtnAgregarCliente_Click(object sender, EventArgs e)
    //{
    //    EntidadCliente cli = new EntidadCliente();

    //    if (TxtIdentificacion.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
    //        LbMensaje.Text = "Debe ingresar una identificación";
            
    //        return;
    //    }
    //    if (this.TxtPrimerNombre.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Password');</script>");

    //        LbMensaje.Text= "Debe escribir un Nombre";
    //        return;
    //    }
    //    if (this.TxtSegundoNombre.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

    //        LbMensaje.Text = "Debe escribir segundo nombre";
    //        return;
    //    }
    //    if (this.TxtPrimerApellido.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

    //        LbMensaje.Text = "Debe escribir primer Apellido";
    //        return;
    //    }
    //    if (this.TxtSegundoApellido.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Correo');</script>");

    //        LbMensaje.Text = "Debe escribir segundo apellido";
    //        return;

    //    }
    //    if (this.DDLTipoIdentificacion.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Rol');</script>");

    //        LbMensaje.Text = "Debe elegir tipo de identificación";
    //        return;
    //    }

    //    if (this.TxtTelefono.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Rol');</script>");

    //        LbMensaje.Text = "Debe escribir número telefonico";
    //        return;
    //    }

    //    if (this.TxtCelular.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Rol');</script>");

    //        LbMensaje.Text = "Debe escribir el número celular";
    //        return;
    //    }


    //    if (this.TxtEmail.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Rol');</script>");

    //        LbMensaje.Text = "Debe escribir correo electrónico";
    //        return;
    //    }
    //    if (this.DDLTipo.Text.Trim().Length == 0)
    //    {
    //        //Response.Write("<script>window.alert('Ingrese Rol');</script>");

    //        LbMensaje.Text = "Debe escribir el tipo de cliente";
    //        return;
    //    }

    //    try
    //    {
    //        cli.Identificacion = TxtIdentificacion.Text.Trim();
    //        cli.PrimerNombreCliente = TxtPrimerNombre.Text.Trim();
    //        cli.SegundoNombreCliente = TxtSegundoNombre.Text.Trim();
    //        cli.PrimerApellidoCliente = TxtPrimerApellido.Text.Trim();
    //        cli.SegundoApellidoCliente  = TxtSegundoApellido.Text.Trim();
    //        cli.TipoIdentificacion = DDLTipoIdentificacion.Text.Trim();
    //        cli.Telefono = TxtTelefono.Text.Trim();
    //        cli.Celular = TxtCelular.Text.Trim();
    //        cli.Email = TxtEmail.Text.Trim();
    //        cli.Clasificacion = DDLTipo.Text.Trim();
          




         

    //        if (BrokerCliente.AgregarNuevoCliente(cli) > 0 ) //si la funcion agregar pudo insertar
    //        {

    //            Response.Write("<script>window.alert('El Cliente fue registrado con Exito');</script>");
    //            //LbMensaje.Text = "Usuario  fue registrado";
    //            limpiar();

    //        }
    //        else//si no pudo insertar
    //        {
    //            Response.Write("<script>window.alert('Cliente no fue registrado');</script>");
    //            //LbMensaje.Text = "Usuario no fue registrado";
    //        }

    //    }
    //    catch (Exception ex)
    //    {
    //        LbMensaje.Text=("Error: " + ex.Message);
    //        return;
    //    }
 
    //}

    protected void BtnEnviar_Click(object sender, EventArgs e)
    {
        {
            EntidadCliente cli = new EntidadCliente();

            if (TxtIdentificacion.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
                LbMensaje.Text = "Debe ingresar una identificación";

                return;
            }
            if (this.TxtPrimerNombre.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Password');</script>");

                LbMensaje.Text = "Debe escribir un Nombre";
                return;
            }
            if (this.TxtSegundoNombre.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

                LbMensaje.Text = "Debe escribir segundo nombre";
                return;
            }
            if (this.TxtPrimerApellido.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

                LbMensaje.Text = "Debe escribir primer Apellido";
                return;
            }
            if (this.TxtSegundoApellido.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Correo');</script>");

                LbMensaje.Text = "Debe escribir segundo apellido";
                return;

            }
            if (this.DDlTipoIdentificacion.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Rol');</script>");

                LbMensaje.Text = "Debe elegir tipo de identificación";
                return;
            }

            if (this.TxtTelefono.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Rol');</script>");

                LbMensaje.Text = "Debe escribir número telefonico";
                return;
            }

            if (this.TxtCelular.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Rol');</script>");

                LbMensaje.Text = "Debe escribir el número celular";
                return;
            }


            if (this.TxtEmail.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Rol');</script>");

                LbMensaje.Text = "Debe escribir correo electrónico";
                return;
            }
            if (this.DDlClasificacion.Text.Trim().Length == 0)
            {
                //Response.Write("<script>window.alert('Ingrese Rol');</script>");

                LbMensaje.Text = "Debe escribir el tipo de cliente";
                return;
            }

            try
            {
                cli.Identificacion = TxtIdentificacion.Text.Trim();
                cli.PrimerNombreCliente = TxtPrimerNombre.Text.Trim();
                cli.SegundoNombreCliente = TxtSegundoNombre.Text.Trim();
                cli.PrimerApellidoCliente = TxtPrimerApellido.Text.Trim();
                cli.SegundoApellidoCliente = TxtSegundoApellido.Text.Trim();
                cli.TipoIdentificacion = DDlTipoIdentificacion.Text.Trim();
                cli.Telefono = TxtTelefono.Text.Trim();
                cli.Celular = TxtCelular.Text.Trim();
                cli.Email = TxtEmail.Text.Trim();
                cli.Clasificacion = DDlClasificacion.Text.Trim();







                if (BrokerCliente.AgregarNuevoCliente(cli) > 0) //si la funcion agregar pudo insertar
                {

                    Response.Write("<script>window.alert('El Cliente fue registrado con Exito');</script>");
                    //LbMensaje.Text = "Usuario  fue registrado";
                    limpiar();

                }
                else//si no pudo insertar
                {
                    Response.Write("<script>window.alert('Cliente no fue registrado');</script>");
                    //LbMensaje.Text = "Usuario no fue registrado";
                }

            }
            catch (Exception ex)
            {
                LbMensaje.Text = ("Error: " + ex.Message);
                return;
            }

        }

    }
}
