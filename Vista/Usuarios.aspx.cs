using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

public partial class Vista_Usuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    Encriptamiento encri = new Encriptamiento();

           
                public void limpiar() {

                TxtNombreUsuario.Text = " ";
                TxtPassword.Text = " ";
                TxtNombre.Text = " ";
                TxtApellidos.Text = " ";
                TxtCorreo.Text = " ";
                DdlRol.Text = "SELECCIONE ROL";
         }     

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
       
    }
    protected void BtnGuardar_Click(object sender, EventArgs e)
    {
        EntidadUsuario user = new EntidadUsuario();


        if (TxtNombreUsuario.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensaje.Text = "Debe ingresar un nombre de usuario";
            
            return;
        }
        if (this.TxtPassword.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Password');</script>");

            LbMensaje.Text= "Debe ingresar un Password";
            return;
        }
        if (this.TxtNombre.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

            LbMensaje.Text = "Debe ingresar un Nombre";
            return;
        }
        if (this.TxtApellidos.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

            LbMensaje.Text = "Debe ingresar un Apellido";
            return;
        }
        if (this.TxtCorreo.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Correo');</script>");

            LbMensaje.Text = "Debe ingresar una cuenta de correo";
            return;

        }
        if (this.DdlRol.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe elegir el Rol de usuario";
            return;
        }

        try
        {
            var Usuario = TxtNombreUsuario.Text.Trim();
            var Clave = TxtPassword.Text.Trim();
            var Nombre = TxtNombre.Text.Trim();
            var Apellido = TxtApellidos.Text.Trim();
            var Correo = TxtCorreo.Text.Trim();
            var Tipo = DdlRol.Text.Trim();




            var aux = new EntidadUsuario(0, Usuario, encri.EncryptKey(Clave), Nombre, Apellido, Correo,Tipo);

            if (BrokerUsuario.AgregarProcedure(aux) ) //si la funcion agregar pudo insertar
            {

                Response.Write("<script>window.alert('Usuario  fue registrado');</script>");
                //LbMensaje.Text = "Usuario  fue registrado";
         limpiar();

            }
            else//si no pudo insertar
            {
                Response.Write("<script>window.alert('Usuario no fue registrado');</script>");
                //LbMensaje.Text = "Usuario no fue registrado";
            }

        }
        catch (Exception ex)
        {
            LbMensaje.Text=("Error: " + ex.Message);
            return;
        }
 
    }

  
}