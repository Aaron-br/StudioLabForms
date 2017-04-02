<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="WebFormConMaestra.aspx.cs" Inherits="StudioWebFormsLab.WebFormConMaestra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">

      <h1>WebForms Lab.</h1>
      <h2>Welcome!</h2>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">

    <nav class="navbar navbar-default">    
        <ul class="nav navbar-nav">        
            <li>Menu 1</li>
            <li>Menu 2</li>
            <li>Menu 3</li>
            <li>Menu 4</li>    
        </ul>
    </nav>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenido" runat="server">
    HOLA! :)

    
<asp:LinkButton ID="LinkButton1"  NavigateUrl="~/masinfo.aspx" runat="server">LinkButton</asp:LinkButton>

</asp:Content>

