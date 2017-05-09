using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using System.Data.SqlClient;
using DataAcces;

namespace DataAccesLayer
{

    //COMPONENTES DE ACCESO A DATOS

    //Los Componentes de Acceso a Datos(CADs) encapsulan la tecnología de acceso a datos 
    //y la BD al resto de la aplicación.

    //Proporciona un interfaz sencillo que permite recuperar los datos de la BD y 
    //salvar una enAdad de negocio en la BD.

    public class UsuarioDAL
    {
        public ENUsuario dameUsuarioPorID(int idUsuario)
        {
            ENUsuario usu = new ENUsuario();

            //Cadena de conxion a la base de datos
            SqlConnection conexion = null;

            try
            {

                           //Creamos nuestro objeto de conexion usando nuestro archivo de configuraciones
                           using (conexion = SingletonConexion.getInstance().ConexionBDSothis())
                           {
                            //Abrimos la conexion
                            conexion.Open(); 

                            //Conectamos el procedimiento almacenado que actualizará los datos
                            using (SqlCommand cmd = new SqlCommand("SPUsuarioByID", conexion))
                            {
                                    //Indicamos que vamos a ejecutar un procedimiento almacenado
                                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                                    //Indicamos el tipo de operación, en este caso Actualización
                                    //cmd.Parameters.AddWithValue("@Operacion", "S");
                                    //Pasamos los parametros del usuario                       
                                    cmd.Parameters.AddWithValue("@ID", idUsuario);

                                SqlDataReader rd = cmd.ExecuteReader();

                                if (rd.HasRows)
                                {
                                    if (rd.Read())
                                    {
                                        //Instanciamos al objeto EUsuario para llenar sus propiedades                               
                                        usu.IdUsuario = Convert.ToInt32(rd["idUsuario"]);
                                        usu.Nombre = Convert.ToString(rd["nombre"]);
                                        usu.Apellido1 = Convert.ToString(rd["apellido1"]);
                                        usu.Apellido2 = Convert.ToString(rd["apellido2"]);
                                        usu.Edad = Convert.ToInt32(rd["edad"]);
                                        usu.UsuarioROl = Convert.ToInt32(rd["usuarioRol"]);

                                    }
                                }
                                else
                                {
                                   // usu.Error.Append("No hay registros");
                                }
                            }
                    }
                }
                catch (Exception ex)
                {
                     throw new Exception("Error al obtener usuario por ID: ", ex);
                }

            return usu;

        }



    }
}
