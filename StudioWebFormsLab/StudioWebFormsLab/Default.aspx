<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudioWebFormsLab.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

     <h1>CONTROLES DE USUARIO</h1>

        <h4>Hola Mundo desde el cliente</h4>
        <h4><asp:Label ID="Label1" runat="server" Text="Hola mundo desde control de servidor"></asp:Label></h4>

        
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>

        <br />
        <br />

        <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

            <asp:textbox runat="server" ID="textbox1"></asp:textbox>

        </div>   
        </form>


</body>

</html>
