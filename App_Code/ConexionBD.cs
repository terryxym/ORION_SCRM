using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

public class ConexionBD
{
	
	public static SqlConnection ObtenerConexion()
        {
            SqlConnection conectar = new SqlConnection("Data source=(local);DataBase=orion;Integrated Security=SSPI");
            conectar.Open();
            return conectar;
        }
	
	}

