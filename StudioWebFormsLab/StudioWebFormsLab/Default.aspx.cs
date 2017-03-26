using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccesLayer;
using System.Web.UI.HtmlControls;

namespace StudioWebFormsLab
{
    public partial class Default : System.Web.UI.Page
    {
        AccesoDatos a = new AccesoDatos();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //textbox1.Text = "";
            HtmlGenericControl h1 = new HtmlGenericControl();
            h1.TagName = "h1";
            h1.InnerText = "Hola mundo desde el codigo del servidor";
            Panel1.Controls.Add(h1);


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            textbox1.Text = "Hago Click en el boton!";
        }
    }
}