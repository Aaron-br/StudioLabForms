using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntitiesLayer;
using BusinessObjectLayer;

namespace StudioWebFormsLab
{
    public partial class GestionUsuarios : System.Web.UI.Page
    {

        private UsuarioBLL _UsuarioBLL = new UsuarioBLL();
        public List<ENUsuario> usuarios = new List<ENUsuario>();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Esto debe devolver una lista de usuarios
            usuarios = _UsuarioBLL.DameTodosUsuarios().ToList();

        }
    }
}