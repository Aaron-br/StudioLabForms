<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionUsuarios.aspx.cs" Inherits="StudioWebFormsLab.GestionUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="table-responsive">
            <input style="display:none" value="" id="numRegistros"/>
            <input style="display:none" value="" id="numPaginas" />
            <table class="table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                    </tr>
                </thead>
                <tbody>
                     <% foreach (var usu in usuarios) { %>
                        <tr>
                            <td><%= usu.Nombre %></td>
                        </tr>
                      <% } %>
                </tbody>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
