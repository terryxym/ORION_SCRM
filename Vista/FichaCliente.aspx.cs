using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;


public partial class Vista_FichaCliente : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public EntidadCliente ClienteActual { get; set; }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        EntidadCliente cli = new EntidadCliente();

        BrokerCliente bus = new BrokerCliente();


        cli = bus.ObtenerClienteSinFicha(TxtIdentificacionBuscar.Text);
        TxtPrimerNombre.Text = cli.PrimerNombreCliente;
        TxtSegundoNombre.Text = cli.SegundoNombreCliente;
        TxtPrimerApellido.Text = cli.PrimerApellidoCliente;
        TxtSegundoApellido.Text = cli.SegundoApellidoCliente;
        TxtTipoIdentificacion.Text = cli.TipoIdentificacion;
        TxtTelefono.Text = cli.Telefono;
        TxtCelular.Text = cli.Celular;
        TxtEmail.Text = cli.Email;
        TxtClasificacion.Text = cli.TipoCliente;
        TxtIdentificacion.Text = cli.Identificacion;
        



    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        EntidadCliente cli = new EntidadCliente();

     

        if (TxtFechaNacimientoCliente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensaje.Text = "Debe ingresar una Fecha de Nacimiento";

            return;
        }
        if (this.TxtEdad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Password');</script>");

            LbMensaje.Text = "Debe escribir la Edad";
            return;
        }
        if (this.RblGenero.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

            LbMensaje.Text = "Debe elegir un genero";
            return;
        }
        if (this.RBLEstadoCivil.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

            LbMensaje.Text = "Debe elegir un estado civil";
            return;
        }
        if (this.DDLNacionalidad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Correo');</script>");

            LbMensaje.Text = "Debe elegir la nacionalidad";
            return;

        }
        if (this.TxtDireccionResidencia.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribr la dirección de la residencia";
            return;
        }

        if (this.DDLCiudad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe elegir la ciudad";
            return;
        }

        if (this.DDLActividadActual.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe elegir la actividad actual";
            return;
        }




        if (this.TxtNombreConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir el nombre del conyugue";
            return;
        }
        if (this.TxtApellidoConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir el apellido del conyugue";
            return;
        }

        if (this.TxtFechaNacimientoConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir la fecha de nacimiento del conyugue";
            return;
        }

        if (this.TxtEdadConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir la edad del conyugue";
            return;
        }

        if (this.DDLProfesionConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir elegir la profesión del conyugue";
            return;
        }

        if (this.TxtNumeroPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir el número de pasaporte";
            return;
        }

        if (this.TxtFechaPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir la fecha del pasaporte";
            return;
        }


        if (this.RBLVisaVigente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe elegir visa vigente";
            return;
        }


        //if (this.RBLNoLlamar.Text.Trim().Length == 0)
        //{
        //    //Response.Write("<script>window.alert('Ingrese Rol');</script>");

        //    LbMensaje.Text = "Debe elegir no llamar";
        //    return;
        //}


        if (this.DDLMedioContacto.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe elegir el medio de contacto";
            return;
        }


        if (this.TxtFechaProximaLlamada.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir la fecha de la proxima llamada";
            return;
        }

        if (this.TxtSeguimiento.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensaje.Text = "Debe escribir el seguimiento del cliente";
            return;
        }


        //try
        //{
            cli.Identificacion = TxtIdentificacion.Text.Trim();
            cli.PrimerNombreCliente = TxtPrimerNombre.Text.Trim();
            cli.SegundoNombreCliente = TxtSegundoNombre.Text.Trim();
            cli.SegundoApellidoCliente = TxtSegundoApellido.Text.Trim();
            cli.PrimerApellidoCliente = TxtPrimerApellido.Text.Trim();
            cli.TipoIdentificacion = TxtTipoIdentificacion.Text.Trim();
            cli.Telefono = TxtTelefono.Text.Trim();
            cli.Celular = TxtCelular.Text.Trim();
            cli.Email = TxtEmail.Text.Trim();
            cli.Clasificacion = TxtClasificacion.Text.Trim();
            cli.FechaNacimiento = TxtFechaNacimientoCliente.Text.Trim();
            cli.Edad = Convert.ToInt32(TxtEdad.Text);
            cli.Genero = RblGenero.Text.Trim();
            cli.EstadoCivil = RBLEstadoCivil.Text.Trim();
            cli.Nacionalidad = DDLNacionalidad.Text.Trim();
            cli.DireccionResidencia = TxtDireccionResidencia.Text.Trim();
            cli.Telefono = TxtTelefono.Text.Trim();
            cli.Ciudad = DDLCiudad.Text.Trim();
            cli.ActividadActual = DDLActividadActual.Text.Trim();
            cli.AsesorAsignado = DropDownList1.Text.Trim();
            cli.NombreConyugue = TxtNombreConyugue.Text.Trim();
            cli.ApellidosConyugue = TxtApellidoConyugue.Text.Trim();
            cli.FechaNacimientoConyugue = TxtFechaNacimientoConyugue.Text.Trim();
            cli.EdadConyugue = TxtEdadConyugue.Text.Trim();
            cli.ProfesionConyugue = DDLProfesionConyugue.Text.Trim();
            cli.NumeroPasaporte = TxtNumeroPasaporte.Text.Trim();
            cli.FechaVencimientoPasaporte = TxtFechaPasaporte.Text.Trim();
            cli.VisaVigente = RBLVisaVigente.Text.Trim();
            cli.NoLlamarCliente = RBLNoLlamar.Text.Trim();
            cli.MedioContactoDelCliente = DDLMedioContacto.Text.Trim();
            cli.DetalleSeguimiento = TxtSeguimiento.Text.Trim();
            cli.FechaProximaLlamada = TxtFechaProximaLlamada.Text.Trim();




     





                if (BrokerCliente.ModificarFichaCliente(cli) > 0) //si la funcion agregar pudo insertar

                {

                    Response.Write("<script>window.alert('El Cliente fue registrado con Exito');</script>");
                    //LbMensaje.Text = "Usuario  fue registrado";
                    //limpiar();

                }
                else//si no pudo insertar
                {
                    Response.Write("<script>window.alert('Cliente no fue registrado');</script>");
                    //LbMensaje.Text = "Usuario no fue registrado";
                }

            }
            //catch (Exception ex)
            //{
            //    LbMensaje.Text = ("Error: " + ex.Message);
            //    return;
            //}

    protected void Button1_Click1(object sender, EventArgs e)
    {
        EntidadCliente segui = new EntidadCliente();
        EntidadUsuario us = new EntidadUsuario();

        segui.Identificacion = TxtIdentificacion.Text.Trim();
        segui.FechaProximaLlamada = TxtFechaProximaLlamada.Text.Trim();
        segui.DetalleSeguimiento = TxtSeguimiento.Text.Trim();
        us.Usuario = us.Usuario;
        Label1.Text = us.Usuario;




        if(BrokerCliente.AgregarSeguimiento(segui,us) >0)
        {

            Response.Write("<script>window.alert('Seguimiento agregado');</script>");
            //LbMensaje.Text = "Usuario  fue registrado";
            //limpiar();

        }
        else//si no pudo insertar
        {
            Response.Write("<script>window.alert('Seguimiento no agregado');</script>");
            //LbMensaje.Text = "Usuario no fue registrado";
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        EntidadCliente cli = new EntidadCliente();

        BrokerCliente bus = new BrokerCliente();


        cli = bus.ObtenerClienteConFicha(TxtIdentificacionBuscar.Text);
        TxtPrimerNombre.Text = cli.PrimerNombreCliente;
        TxtSegundoNombre.Text = cli.SegundoNombreCliente;
        TxtPrimerApellido.Text = cli.PrimerApellidoCliente;
        TxtSegundoApellido.Text = cli.SegundoApellidoCliente;
        TxtTipoIdentificacion.Text = cli.TipoIdentificacion;
        TxtTelefono.Text = cli.Telefono;
        TxtCelular.Text = cli.Celular;
        TxtEmail.Text = cli.Email;
        TxtClasificacion.Text = cli.TipoCliente;
        TxtIdentificacion.Text = cli.Identificacion;
        TxtFechaNacimientoCliente.Text= cli.FechaNacimiento;
        RblGenero.Text= cli.Genero;
        RBLEstadoCivil.Text= cli.EstadoCivil;
        TxtDireccionResidencia.Text= cli.DireccionResidencia;
        DropDownList1.Text = cli.AsesorAsignado;
        DDLNacionalidad.Text= cli.Nacionalidad;
        DDLCiudad.Text= cli.Ciudad;
        TxtEdad.Text= cli.Edad.ToString();
        DDLActividadActual.Text= cli.ActividadActual;
        TxtNombreConyugue.Text= cli.NombreConyugue;
        TxtApellidoConyugue.Text= cli.ApellidosConyugue;
        TxtFechaNacimientoConyugue.Text = cli.FechaNacimientoConyugue;
        TxtEdadConyugue.Text= cli.EdadConyugue;
        DDLProfesionConyugue.Text= cli.ProfesionConyugue;
        TxtNumeroPasaporte.Text= cli.NumeroPasaporte;
        TxtFechaPasaporte.Text= cli.FechaVencimientoPasaporte;
        RBLVisaVigente.Text= cli.VisaVigente;
        RBLNoLlamar.Text= cli.NoLlamarCliente;
        DDLMedioContacto.Text= cli.MedioContactoDelCliente;
        TxtFechaProximaLlamada.Text= cli.FechaProximaLlamada;
        TxtSeguimiento.Text= cli.DetalleSeguimiento;



         }
    }


    //}
