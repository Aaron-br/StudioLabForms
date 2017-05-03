using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntitiesLayer
{
    public class ENUsuario
    {
        private int idUsuario;
        private string nombre;
        private string apellido1;
        private string apellido2;
        private int usuarioRol;

        public int IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public int UsuarioROl { get; set; }


    }
}
