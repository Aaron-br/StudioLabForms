<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFConGridBootstrap.aspx.cs" Inherits="StudioWebFormsLab.WFConGridBootstrap" %>

<!DOCTYPE html>

<%@ Import Namespace="System.Web.Optimization" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Form con rejilla Bootstrap.</title>
    <%: Styles.Render("~/bundles/css/bootstrap") %>
    <%: Styles.Render("~/bundles/css/jqueryUI") %>
</head>
<body>





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
