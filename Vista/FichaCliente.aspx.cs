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
        if (Request.Cookies["Usuario"] != null)
        {
            LbUsuario.Text = Request.Cookies["Usuario"].Value;
        }

        if (Request.Cookies["Rol"] != null)
        {
            LbRol.Text =  Request.Cookies["Rol"].Value;


        }
       
        
    }

    public EntidadCliente ClienteActual { get; set; }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }



    //protected void BuscarClienteSinFicha_Click(object sender, EventArgs e)
    //{
    //    EntidadCliente cli = new EntidadCliente();

    //    BrokerCliente bus = new BrokerCliente();


    //    cli = bus.ObtenerClienteSinFicha(TxtIdentificacionBuscar.Text);
    //    TxtPrimerNombre.Text = cli.PrimerNombreCliente;
    //    TxtSegundoNombre.Text = cli.SegundoNombreCliente;
    //    TxtPrimerApellido.Text = cli.PrimerApellidoCliente;
    //    TxtSegundoApellido.Text = cli.SegundoApellidoCliente;
    //    TxtTipoIdentificacion.Text = cli.TipoIdentificacion;
    //    TxtTelefono.Text = cli.Telefono;
    //    TxtCelular.Text = cli.Celular;
    //    TxtEmail.Text = cli.Email;
    //    TxtClasificacion.Text = cli.TipoCliente;
    //    TxtIdentificacion.Text = cli.Identificacion;
        



    //}
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


        EntidadCliente cli = new EntidadCliente();

     

        if (TxtFechaNacimientoCliente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Debe ingresar una Fecha de Nacimiento";

            return;
        }
        if (this.TxtEdad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Password');</script>");

            LbMensajeError.Text = "Debe escribir la Edad";
            return;
        }
        if (this.RblGenero.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

            LbMensajeError.Text = "Debe elegir un genero";
            return;
        }
        if (this.RBLEstadoCivil.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

            LbMensajeError.Text = "Debe elegir un estado civil";
            return;
        }
        if (this.DDLNacionalidad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Correo');</script>");

            LbMensajeError.Text = "Debe elegir la nacionalidad";
            return;

        }
        if (this.TxtDireccionResidencia.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribr la dirección de la residencia";
            return;
        }

        if (this.DDLCiudadCliente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir la ciudad";
            return;
        }

        if (this.DDLActividadActual.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir la actividad actual";
            return;
        }




        if (this.TxtNombreConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir el nombre del conyugue";
            return;
        }
        if (this.TxtApellidoConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir el apellido del conyugue";
            return;
        }

        if (this.TxtFechaNacimientoConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir la fecha de nacimiento del conyugue";
            return;
        }

        if (this.TxtEdadConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir la edad del conyugue";
            return;
        }

        if (this.DDLProfesionConyugue.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir elegir la profesión del conyugue";
            return;
        }

        if (this.TxtNumeroPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir el número de pasaporte";
            return;
        }

        if (this.TxtFechaPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir la fecha del pasaporte";
            return;
        }


        if (this.RBLVisaVigente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir visa vigente";
            return;
        }


        //if (this.RBLNoLlamar.Text.Trim().Length == 0)
        //{
        //    //Response.Write("<script>window.alert('Ingrese Rol');</script>");

        //    LbMensaje.Text = "Debe elegir no llamar";
        //    return;
        //}


       

        

      


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
            cli.Ciudad = DDLCiudadCliente.Text.Trim();
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
            //cli.NoLlamarCliente = RBLNoLlamar.Text.Trim();
            
           




     





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
        //EntidadCliente segui = new EntidadCliente();
        EntidadUsuario us = new EntidadUsuario();

        EntidadSeguimiento se = new EntidadSeguimiento();

        if (this.DDLMedioContacto.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "El medio de contacto no puede estar en blanco";
            return;
        }

        if (this.TxtFechaProximaLlamada.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "La fecha de contacto no puede quedar en blanco";
            return;
        }

        if (this.TxtSeguimiento.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir un seguimiento";
            return;
        }
        se.IdentificacionCliente = TxtIdentificacion.Text.Trim();
        se.FechaLlamadaSeguimiento = TxtFechaProximaLlamada.Text.Trim();
        se.DetalleSeguimientoLlamada = TxtSeguimiento.Text.Trim();
        LbUsuario.Text = Request.Cookies["Usuario"].Value;
        us.Usuario = LbUsuario.Text;
        se.MedioContactoAlCliente = DDLMedioContacto.Text;
        //se.NoLlamarAlCliente = RBLNoLlamar.Text;
        

       
        




        if(BrokerSeguimiento.AgregarSeguimiento(se,us) >0)
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
    protected void BuscarClienteConFicha_Click(object sender, EventArgs e)
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
        DDLCiudadCliente.Text = cli.Ciudad;
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
        //RBLNoLlamar.Text= cli.NoLlamarCliente;
        DDLMedioContacto.Text= cli.MedioContactoDelCliente;




        
        



         }
    
   

    protected void BtnSeguimiento_Click(object sender, EventArgs e)
    {
        //BrokerCliente bro = new BrokerCliente();
        //EntidadCliente cli = new EntidadCliente();
        //EntidadUsuario us = new EntidadUsuario();


        GridView1.DataSource = BrokerSeguimiento.BuscarCliente(TxtIdentificacionBuscar.Text);
        GridView1.DataBind();
            //cli = bro.ObtenerSeguimientoCliente(TxtIdentificacionBuscar.Text);

        //GridView1.DataSource = BrokerCliente.BuscarCliente(TxtIdentificacionBuscar.Text).ToString();
            //Usuario.Text = cli.FechaProximaLlamada;
        //LBDetalleSeguimiento.Text = cli.DetalleSeguimiento;
        //    LBUsuarioQueLlamo. Text = 
            //TxtSeguimiento.Text = cli.DetalleSeguimiento;
            //LbUsuario.Text = Request.Cookies["Usuario"].Value;
            ////TxtUser.Text = us.Usuario;
            //DDLMedioContacto.Text = cli.MedioContactoDelCliente;
            //RBLNoLlamar.Text = cli.NoLlamarCliente;
            
           
       
    }
    protected void BtnActualizarInfo_Click(object sender, EventArgs e)
    {

        EntidadCliente cli = new EntidadCliente();

        if (TxtPrimerNombre.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Primer Nombre no puede estar en blanco";

            return;
        }
        if (TxtPrimerApellido.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Primer Apellido no puede estar en blanco";

            return;
        }

        if (TxtFechaNacimientoCliente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Debe ingresar una Fecha de Nacimiento";

            return;
        }

        if (TxtIdentificacion.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Identificacion no puede estar en blanco";

            return;
        }

        if (TxtTipoIdentificacion.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre de Usuario');</script>");
            LbMensajeError.Text = "Tipo de identificacion no puede estar en blanco";

            return;
        }
        if (this.TxtEdad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Password');</script>");

            LbMensajeError.Text = "Debe escribir la Edad";
            return;
        }
        if (this.RblGenero.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Nombre');</script>");

            LbMensajeError.Text = "Debe elegir un genero";
            return;
        }
        if (this.RBLEstadoCivil.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Apellidos');</script>");

            LbMensajeError.Text = "Debe elegir un estado civil";
            return;
        }
        if (this.DDLNacionalidad.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Correo');</script>");

            LbMensajeError.Text = "Debe elegir la nacionalidad";
            return;

        }
        

        if (this.TxtDireccionResidencia.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribr la dirección de la residencia";
            return;
        }

        if (this.DDLCiudadCliente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir la ciudad";
            return;
        }

        if (this.DDLActividadActual.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir la actividad actual";
            return;
        }

        if (this.TxtClasificacion.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Clasificación no puede estar en blanco";
            return;
        }

        if (this.TxtEmail.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "El campo E-mail no puede estar en blanco";
            return;
        }






        if (this.TxtNumeroPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir el número de pasaporte";
            return;
        }

        if (this.TxtFechaPasaporte.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe escribir la fecha del pasaporte";
            return;
        }


        if (this.RBLVisaVigente.Text.Trim().Length == 0)
        {
            //Response.Write("<script>window.alert('Ingrese Rol');</script>");

            LbMensajeError.Text = "Debe elegir visa vigente";
            return;
        }


        //if (this.RBLNoLlamar.Text.Trim().Length == 0)
        //{
        //    //Response.Write("<script>window.alert('Ingrese Rol');</script>");

        //    LbMensaje.Text = "Debe elegir no llamar";
        //    return;
        //}









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
        cli.Ciudad = DDLCiudadCliente.Text.Trim();
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
        //cli.NoLlamarCliente = RBLNoLlamar.Text.Trim();












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
    protected void BuscarClienteSinFicha_Click1(object sender, EventArgs e)
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
    protected void BuscarClienteConFicha_Click1(object sender, EventArgs e)
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
        TxtFechaNacimientoCliente.Text = cli.FechaNacimiento;
        RblGenero.Text = cli.Genero;
        RBLEstadoCivil.Text = cli.EstadoCivil;
        TxtDireccionResidencia.Text = cli.DireccionResidencia;
        DropDownList1.Text = cli.AsesorAsignado;
        DDLNacionalidad.Text = cli.Nacionalidad;
        DDLCiudadCliente.Text = cli.Ciudad;
        TxtEdad.Text = cli.Edad.ToString();
        DDLActividadActual.Text = cli.ActividadActual;
        TxtNombreConyugue.Text = cli.NombreConyugue;
        TxtApellidoConyugue.Text = cli.ApellidosConyugue;
        TxtFechaNacimientoConyugue.Text = cli.FechaNacimientoConyugue;
        TxtEdadConyugue.Text = cli.EdadConyugue;
        DDLProfesionConyugue.Text = cli.ProfesionConyugue;
        TxtNumeroPasaporte.Text = cli.NumeroPasaporte;
        TxtFechaPasaporte.Text = cli.FechaVencimientoPasaporte;
        RBLVisaVigente.Text = cli.VisaVigente;
        //RBLNoLlamar.Text = cli.NoLlamarCliente;
        DDLMedioContacto.Text = cli.MedioContactoDelCliente;




        
        


    }

    protected void Button1_Click(object sender, EventArgs e)
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
        TxtFechaNacimientoCliente.Text = cli.FechaNacimiento;
        RblGenero.Text = cli.Genero;
        RBLEstadoCivil.Text = cli.EstadoCivil;
        TxtDireccionResidencia.Text = cli.DireccionResidencia;
        DropDownList1.Text = cli.AsesorAsignado;
        DDLNacionalidad.Text = cli.Nacionalidad;
        DDLCiudadCliente.Text = cli.Ciudad;
        TxtEdad.Text = cli.Edad.ToString();
        DDLActividadActual.Text = cli.ActividadActual;
        TxtNombreConyugue.Text = cli.NombreConyugue;
        TxtApellidoConyugue.Text = cli.ApellidosConyugue;
        TxtFechaNacimientoConyugue.Text = cli.FechaNacimientoConyugue;
        TxtEdadConyugue.Text = cli.EdadConyugue;
        DDLProfesionConyugue.Text = cli.ProfesionConyugue;
        TxtNumeroPasaporte.Text = cli.NumeroPasaporte;
        TxtFechaPasaporte.Text = cli.FechaVencimientoPasaporte;
        RBLVisaVigente.Text = cli.VisaVigente;
        //RBLNoLlamar.Text = cli.NoLlamarCliente;
        DDLMedioContacto.Text = cli.MedioContactoDelCliente;


    }
}


    //}
