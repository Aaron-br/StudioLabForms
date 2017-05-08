using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Threading.Tasks;

namespace DataAcces
{
    //Clase que definiremos para obtener el connectionString
    //Utilizamos el patrón SINGLETON para la implementación.

    class SingletonConexion
    {
        #region "PATRON SINGLETON"

        private static SingletonConexion conexion = null;

        private SingletonConexion() { }

        public static SingletonConexion getInstance()
        {

            if (conexion == null)
            {
                conexion = new SingletonConexion();
            }

            return conexion;
        }

        #endregion


        public SqlConnection ConexionBDSothis()
        {

            SqlConnection conexion = new SqlConnection();

            conexion.ConnectionString = ConfigurationManager.ConnectionStrings["StudioWebFormsBD"].ToString();

            return conexion;
        }





    }
}
