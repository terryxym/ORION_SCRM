<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Vista_Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <div >
         
         <img src="../Images/login2.png" style="width: 100%;height: 53px;margin-bottom: 50px;" />
     </div>
    <form id="form1" runat="server">
        <a style="

    text-align: center;
    margin-left: 574px;
    font-size: x-large;
    font-weight: bold;">

            Gestión de Clientes
        </a>

    <div>
        
    <table>
        
        <tr>
            <td>

                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>

                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/1460409723_preferences-contact-list.png" OnClick="ImageButton1_Click" style="
    margin-left: 540px;
    margin-top: 62px;
    padding-right: 66px;" />

            </td>
            <td>

                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/1460410354_photo.png" OnClick="ImageButton2_Click" style="
    margin-top: 62px;
"/>

            </td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="Agregar Nuevo Cliente" style="
    margin-left: 530px;
    padding-right: 56px;
" Font-Bold="True"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Modificar Cliente" Font-Bold="True" Font-Italic="False"></asp:Label>
    </div>
    </form>
     <div>
        <img src="../Images/login2.png" style="width: 100%;height: 53px;padding-top:0px;margin-top: 221px;" />
    </div>
 
<p style="color:#808080; text-align:center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>
