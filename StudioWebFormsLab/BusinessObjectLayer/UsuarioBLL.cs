using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntitiesLayer;
using DataAccesLayer;

namespace BusinessObjectLayer
{
    public class UsuarioBLL
    {

        //Instanciamos nuestra clase UsuarioDal para poder utilizar las funciones del DAL
        private UsuarioDAL _UsuarioDAL = new UsuarioDAL();

        public ENUsuario DameUsuarioPorID(int idUsuario)
        {
            //Obtenemos los datos mediante la logica que proporciona el DAL
            return _UsuarioDAL.dameUsuarioPorID(idUsuario);
            
        }




    }
}
