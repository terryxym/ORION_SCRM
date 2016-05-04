using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;



public class BrokerCliente
   


{
    public static int AgregarNuevoCliente(EntidadCliente cli)
    {
      

        int retorno = 0;
        using (SqlConnection Conn = ConexionBD.ObtenerConexion())
        {
            SqlCommand Comando = new SqlCommand(string.Format("Insert Into Clientes  (Identificacion,PrimerNombreCliente , SegundoNombreCliente  , PrimerApellidoCliente  , SegundoApellidoCliente   , TipoIdentificacion , Telefono ,Celular ,Email ,Clasificacion) values ({0}, '{1}','{2}','{3}','{4}','{5}', {6},{7},'{8}', '{9}')",
            
                     cli.Identificacion,cli.PrimerNombreCliente, cli.SegundoNombreCliente, cli.PrimerApellidoCliente, cli.SegundoApellidoCliente, cli.TipoIdentificacion, cli.Telefono, cli.Celular, cli.Email, cli.Clasificacion), Conn);

            retorno = Comando.ExecuteNonQuery();
            Conn.Close();
        }
        return retorno;
    }



    public static int ModificarFichaCliente(EntidadCliente cli)
    {

        int retorno = 0;
        using (SqlConnection Conn = ConexionBD.ObtenerConexion())
        {

                

                  SqlCommand Comando = new SqlCommand(string.Format("Update Clientes set   Identificacion='{0}', PrimerNombreCliente= '{1}', SegundoNombreCliente='{2}', PrimerApellidoCliente='{3}', SegundoApellidoCliente='{4}', TipoIdentificacion='{5}', Telefono='{6}',Celular='{7}',Email='{8}',Clasificacion='{9}',FechaNacimiento='{10}',Edad={11},Genero='{12}',EstadoCivil='{13}',Nacionalidad='{14}',DireccionResidencia='{15}',Ciudad='{16}',ActividadActual='{17}',TipoCliente='{18}',AsesorAsignado='{19}', NombreConyugue='{20}', ApellidosConyugue='{21}', FechaNacimientoConyugue='{22}', EdadConyugue='{23}', ProfesionConyugue='{24}',NumeroPasaporte='{25}',FechaVencimientoPasaporte='{26}', VisaVigente='{27}',NoLlamarCliente='{28}',MedioContactoDelCliente='{29}',DetalleSeguimiento='{30}',FechaProximaLlamada='{31}' where Identificacion='{0}'",


                    cli.Identificacion, cli.PrimerNombreCliente, cli.SegundoNombreCliente, cli.PrimerApellidoCliente, cli.SegundoApellidoCliente, cli.TipoIdentificacion, cli.Telefono, cli.Celular, cli.Email, cli.Clasificacion, cli.FechaNacimiento, cli.Edad, cli.Genero, cli.EstadoCivil, cli.Nacionalidad, cli.DireccionResidencia, cli.Ciudad, cli.ActividadActual, cli.TipoCliente, cli.AsesorAsignado, cli.NombreConyugue, cli.ApellidosConyugue, cli.FechaNacimientoConyugue, cli.EdadConyugue, cli.ProfesionConyugue, cli.NumeroPasaporte, cli.FechaVencimientoPasaporte, cli.VisaVigente, cli.NoLlamarCliente, cli.MedioContactoDelCliente, cli.DetalleSeguimiento, cli.FechaProximaLlamada), Conn);

      

            retorno = Comando.ExecuteNonQuery();
            Conn.Close();
        }
        return retorno;
    }




    public static List<EntidadCliente> BuscarCliente(int pCedCliente)
    {

        List<EntidadCliente> Lista = new List<EntidadCliente>();
        using (SqlConnection conexion = ConexionBD.ObtenerConexion())
        {
            SqlCommand comando = new SqlCommand(string.Format(
                "Select Identificacion ,PrimerNombreCliente,SegundoNombreCliente, PrimerApellidoCliente , SegundoApellidoCliente , TipoIdentificacion, Telefono, Celular,Email, Clasificacion from Clientes where Identificacion= {0}", pCedCliente), conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
                EntidadCliente pCliente = new EntidadCliente();
                pCliente.Identificacion = reader.GetString(0);
                pCliente.PrimerNombreCliente = reader.GetString(1);
                pCliente.SegundoNombreCliente = reader.GetString(2);
                pCliente.PrimerApellidoCliente = reader.GetString(3);
                pCliente.SegundoApellidoCliente = reader.GetString(4);
                pCliente.TipoIdentificacion = reader.GetString(5);
                pCliente.Telefono = reader.GetString(6);
                pCliente.Celular = reader.GetString(7);
                pCliente.Email = reader.GetString(8);
                pCliente.TipoCliente = reader.GetString(9);



                Lista.Add(pCliente);

            }
            conexion.Close();
            return Lista;

        }

    }

    public  EntidadCliente ObtenerClienteSinFicha(string pCedCliente)
    {

        using (SqlConnection conexion = ConexionBD.ObtenerConexion())
        {

            EntidadCliente pCliente = new EntidadCliente();
            SqlCommand comando = new SqlCommand(string.Format(
                "Select Identificacion ,PrimerNombreCliente,SegundoNombreCliente, PrimerApellidoCliente , SegundoApellidoCliente , TipoIdentificacion, Telefono, Celular,Email, Clasificacion  from Clientes where Identificacion= {0}", pCedCliente), conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {


              
                pCliente.Identificacion = reader.GetString(0);
                pCliente.PrimerNombreCliente = reader.GetString(1);
                pCliente.SegundoNombreCliente = reader.GetString(2);
                pCliente.PrimerApellidoCliente = reader.GetString(3);
                pCliente.SegundoApellidoCliente = reader.GetString(4);
                pCliente.TipoIdentificacion = reader.GetString(5);
                pCliente.Telefono = reader.GetString(6);
                pCliente.Celular = reader.GetString(7);
                pCliente.Email = reader.GetString(8);
                pCliente.TipoCliente = reader.GetString(9);
                





            }
            conexion.Close();
            return pCliente;

        }

    }


    public EntidadCliente ObtenerClienteConFicha(string pCedCliente)
    {

        using (SqlConnection conexion = ConexionBD.ObtenerConexion())
        {

            EntidadCliente pCliente = new EntidadCliente();
            SqlCommand comando = new SqlCommand(string.Format(
                "Select Identificacion ,PrimerNombreCliente,SegundoNombreCliente, PrimerApellidoCliente , SegundoApellidoCliente , TipoIdentificacion, Telefono, Celular,Email, Clasificacion, FechaNacimiento,Edad, Genero,EstadoCivil,Nacionalidad,DireccionResidencia,Ciudad,ActividadActual, AsesorAsignado,NombreConyugue,ApellidosConyugue,FechaNacimientoConyugue,EdadConyugue,ProfesionConyugue,NumeroPasaporte,FechaVencimientoPasaporte,VisaVigente from Clientes where Identificacion= {0}", pCedCliente), conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {



                pCliente.Identificacion = reader.GetString(0);
                pCliente.PrimerNombreCliente = reader.GetString(1);
                pCliente.SegundoNombreCliente = reader.GetString(2);
                pCliente.PrimerApellidoCliente = reader.GetString(3);
                pCliente.SegundoApellidoCliente = reader.GetString(4);
                pCliente.TipoIdentificacion = reader.GetString(5);
                pCliente.Telefono = reader.GetString(6);
                pCliente.Celular = reader.GetString(7);
                pCliente.Email = reader.GetString(8);
                pCliente.TipoCliente = reader.GetString(9);
                pCliente.FechaNacimiento = reader.GetString(10);
                pCliente.Edad = reader.GetInt32(11);
                pCliente.Genero = reader.GetString(12);
                pCliente.EstadoCivil = reader.GetString(13);
                pCliente.Nacionalidad = reader.GetString(14);
                pCliente.DireccionResidencia = reader.GetString(15);
                pCliente.Ciudad = reader.GetString(16);
                pCliente.ActividadActual = reader.GetString(17);
                pCliente.AsesorAsignado = reader.GetString(18);
                pCliente.NombreConyugue = reader.GetString(19);
                pCliente.ApellidosConyugue = reader.GetString(20);
                pCliente.FechaNacimientoConyugue = reader.GetString(21);
                pCliente.EdadConyugue = reader.GetString(22);
                pCliente.ProfesionConyugue = reader.GetString(23);
                pCliente.NumeroPasaporte = reader.GetString(24);
                pCliente.FechaVencimientoPasaporte = reader.GetString(25);
                pCliente.VisaVigente = reader.GetString(26);
                //pCliente.NoLlamarCliente = reader.GetString(27);
                //pCliente.MedioContactoDelCliente = reader.GetString(28);
                //pCliente.DetalleSeguimiento = reader.GetString(29);
                //pCliente.FechaProximaLlamada = reader.GetString(30);







            }
            conexion.Close();
            return pCliente;

        }

    }

    public static int AgregarSeguimiento(EntidadCliente cli, EntidadUsuario us)
    {


        int retorno = 0;
        using (SqlConnection Conn = ConexionBD.ObtenerConexion())
        {
            SqlCommand Comando = new SqlCommand(string.Format("Insert Into TblSeguimientoCliente  (IdentificacionCliente,FechaLlamada , DetalleSeguimientoLlamada  , Usuario, MedioContacto, NoLLamar) values ('{0}', '{1}','{2}','{3}', '{4}', '{5}')",

                     cli.Identificacion,cli.FechaProximaLlamada, cli.DetalleSeguimiento, us.Usuario, cli.MedioContactoDelCliente, cli.NoLlamarCliente), Conn);

            retorno = Comando.ExecuteNonQuery();
            Conn.Close();
        }
        return retorno;
    }

    public static EntidadCliente ObtenerSeguimientoCliente(string pCedCliente)
    {

        using (SqlConnection conexion = ConexionBD.ObtenerConexion())
        {
            EntidadUsuario us = new EntidadUsuario();
            EntidadCliente pCliente = new EntidadCliente();
            SqlCommand comando = new SqlCommand(string.Format(
                "Select IdentificacionCliente ,FechaLlamada,DetalleSeguimientoLlamada, Usuario , MedioContacto , NoLlamar from TblSeguimientoCliente where IdentificacionCliente= {0}", pCedCliente), conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {



                  pCliente.Identificacion = reader.GetString(0);
                  pCliente.FechaProximaLlamada = reader.GetString(1);
                  pCliente.DetalleSeguimiento = reader.GetString(2);
                  us.Usuario = reader.GetString(3);
                  pCliente.MedioContactoDelCliente = reader.GetString(4);
                  pCliente.NoLlamarCliente = reader.GetString(5);






            }
            conexion.Close();
            return pCliente;

        }

    }

    public static List<EntidadCliente> BuscarCliente(string pNumCed)
    {

        List<EntidadCliente> Lista = new List<EntidadCliente>();
        using (SqlConnection conexion = ConexionBD.ObtenerConexion())
        {

            EntidadUsuario us = new EntidadUsuario();
            EntidadCliente pCliente = new EntidadCliente();

            SqlCommand comando = new SqlCommand(string.Format(
                "Select IdentificacionCliente,FechaLlamada ,DetalleSeguimientoLlamada,Usuario, MedioContacto from TblSeguimientoCliente where IdentificacionCliente= {0}",pNumCed), conexion);

            SqlDataReader reader = comando.ExecuteReader();

            while (reader.Read())
            {
              
                pCliente.Identificacion = reader.GetString(0);
                pCliente.FechaProximaLlamada = reader.GetString(1);
                pCliente.DetalleSeguimiento = reader.GetString(2);
                us.Usuario = reader.GetString(3);
                pCliente.MedioContactoDelCliente = reader.GetString(4);

                




                Lista.Add(pCliente);

            }
            conexion.Close();
            return Lista;

        }

    }

}