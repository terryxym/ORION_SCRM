using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


public class BrokerUsuario
{
    
    public static int Agregar(EntidadUsuario aux)
    {
    

        int retorno = 0;
        using (SqlConnection Conn = ConexionBD.ObtenerConexion())
        {
            SqlCommand Comando = new SqlCommand(string.Format("Insert Into usuarios  (CODIGO,USUARIO, CLAVE , NOMBRE , APELLIDOS  , CORREO, TIPO) values ({0}, '{1}','{2}','{3}','{4}','{5}', '{6}')",
                aux.Codigo, aux.Usuario, aux.Clave, aux.Nombre, aux.Apellido, aux.Correo, aux.Tipo), Conn);

            retorno = Comando.ExecuteNonQuery();
            Conn.Close();

        }
        return retorno;
    }
    //METODO AGREGAR PERSONA
    public static bool AgregarProcedure(EntidadUsuario usu)
    {

        SqlCommand sql = new SqlCommand("INSERTAR_USUARIO", ConexionBD.ObtenerConexion());
        sql.CommandType = CommandType.StoredProcedure;

        sql.Parameters.Add("@USUARIO", SqlDbType.VarChar, 30).Value = usu.Nombre;
        sql.Parameters.Add("@CLAVE", SqlDbType.VarChar, 20).Value = usu.Clave;
        sql.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 200).Value = usu.Nombre;
        sql.Parameters.Add("@APELLIDOS", SqlDbType.VarChar, 200).Value = usu.Apellido;
        sql.Parameters.Add("@CORREO", SqlDbType.VarChar, 200).Value = usu.Correo;
        sql.Parameters.Add("@TIPO", SqlDbType.VarChar, 30).Value = usu.Tipo;

        try
        {
            int r = sql.ExecuteNonQuery();
            return r > 0;
        }
        catch (Exception)
        {
            return false;
        }
    }

}