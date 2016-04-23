using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de EntidadLogin
/// </summary>
    public class EntidadUsuario
     {
    //public EntidadLogin()
    //{
        public int Codigo { get; set;}
        public String Usuario { get; set; }
        public String Clave { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public String Correo { get; set; }
        public String Tipo { get; set; }
      
       


        public EntidadUsuario() { }

        public EntidadUsuario(int pCodigo, string pUsuario, string pClave, string pNombre, string pApellido, string pCorreo, string pTipo)
        {
           Usuario = pUsuario;
           Clave = pClave;
           Tipo = pTipo;
           Correo = pCorreo;
           Nombre = pNombre;
           Apellido = pApellido;
           Codigo = pCodigo;
       
           


        }
        private string mensaje;


        public string Mensaje
        {
            get { return mensaje; }
            set { mensaje = value; }
        }

     

        //private string mensaje;
        //private string usuario;
        //private string clave;
        //private string tipo;


        //public string Mensaje
        //{
        //    get { return mensaje; }
        //    set { mensaje = value; }
        //}
        //public string Usuario
        //{
        //    get { return usuario; }
        //    set { usuario = value; }
        //}
        //public string Clave
        //{
        //    get { return clave; }
        //    set { clave = value; }
        //}

        //public string Tipo
        //{
        //    get { return tipo; }
        //    set { tipo = value; }
        //}

        public bool Verificar()
        {
            bool resultado = false;
            SqlCommand comando = new SqlCommand("select * from usuarios where Usuario='" + Usuario + "'and Clave='" + Clave + "'and Rol='" + Tipo + "'", ConexionBD.ObtenerConexion());
            SqlDataReader ejecuta = comando.ExecuteReader();
            if (ejecuta.Read())
            {
                resultado = true;
                mensaje = "Su Logueo Fue Ingresado Correctamente \n \n               Bienvenido al Sistema \n \n de Tarjetas de Banco";
            }
            else
            {
                mensaje = "         Excedio el Limite de Intentos al Sistema \n \nEspere unos Minutos y Ingrese Su Logueo Otra Vez";
            }
            return resultado;
	     }
  } 


