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

        private UsuarioBLL _UsuarioDAL = new UsuarioBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

            ENUsuario usu = new ENUsuario();

            usu = _UsuarioDAL.DameUsuarioPorID(2);

            Nombre.Text = usu.Nombre;
            Apellido1.Text = usu.Apellido1;
            Apellido2.Text = usu.Apellido2;
            Edad.Text =usu.Edad.ToString();

        }
    }
}