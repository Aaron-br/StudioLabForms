<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFConGridBootstrap.aspx.cs" Inherits="StudioWebFormsLab.WFConGridBootstrap" %>

<!DOCTYPE html>

<%@ Import Namespace="System.Web.Optimization" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form con rejilla Bootstrap.</title>
    <%: Styles.Render("~/bundles/css/bootstrap") %>
    <%: Styles.Render("~/bundles/css/jqueryUI") %>
    <%: Styles.Render("~/bundles/css/estilos") %>
</head>
<body>


    <header>
        <div class="container">
            <h1>Header</h1>
        </div>
    </header>

    <div class="container">

        <!-- Fila -->
        <section id="icon-loginSection" class="row">
            <div class="col-md-4 col-md-offset-4 text-center">
                   <img id="IconoLogin" src="images/custom_User_2.svg"/>
            </div>
        </section>


         <!-- Fila -->
        <section class="main row">
           
            <div class="col-md-4 col-md-offset-4">

                <!-- Formulario login -->
                <form id="Login" class="form-horizontal" runat="server">
                    <div>

                        <div class="form-group">
                        <label for="txtUsuario">Usuario</label>     
                        <asp:textbox class="form-control" id="txtUsuario" placeholder="Introduzca el usuario" runat="server"></asp:textbox>    
                        </div>

                        <div class="form-group">
                        <label for="txtpwd">Password</label>
                        <asp:textbox class="form-control" id="txtpwd" placeholder="Introduzca password" runat="server" textmode="Password"></asp:textbox>
                        </div>

                        <div class="form-group">
                        <asp:button class="btn btn-primary" id="btnLogin" onclick="btnLogin_Click" runat="server" text="Acceder"></asp:button>
                        </div>

                    </div>
                </form>

            </div>
             
        </section>
    </div>

    <footer class="navbar navbar-fixed-bottom ">
        <div class="container text-right">
             <h1>Hora y fecha</h1>
        </div>
    </footer>

    <%--<form id="form1" runat="server">
    <div>  
    </div>
    </form>--%>



    <asp:PlaceHolder runat="server">        
         <%: Scripts.Render("~/bundles/jquery") %>
         <%: Scripts.Render("~/bundles/jqueryui") %>
         <%: Scripts.Render("~/bundles/jqueryval") %>
         <%: Scripts.Render("~/bundles/modernizr") %>
         <%: Scripts.Render("~/bundles/bootstrap") %>
    </asp:PlaceHolder>
</body>
</html>
