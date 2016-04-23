<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Vista_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div>
        <img src="../Images/login2.png" style="width: 100%; height: 53px;" />
    </div>
    <form id="form1" runat="server">

        <p style="font-size:x-large; text-align:center; font-weight:bold">
            Menú Principal
        </p>

    <div>
            
        <asp:ImageButton ID="ImageButton1"   runat="server" ImageUrl="~/Images/1460312319_user.png" OnClick="ImageButton1_Click" style="margin-left:500px" />
            
        
        </div>

        <asp:Label ID="Label1" runat="server" Text="Gestión de Usuarios" style="
    margin-left: 493px;
    position: absolute;
    margin-top: 175px;"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Gestión de Clientes" style="
    margin-left: 493px;
    position: absolute;
    margin-top: 10px;"></asp:Label>

        <asp:Label ID="Label4" runat="server" BackColor="White" ForeColor="Red" Text="Label"></asp:Label>

        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/1460312986_sign-up.png" OnClick="ImageButton2_Click" style="margin-left: 504px;margin-top: 44px;" />

        <asp:Label ID="Label3" runat="server" Text="afsdfasfasfas"></asp:Label>

        <div>

    </div>
    <div>
        <img src="../Images/login2.png" style=" width: 100%; height: 53px; padding-top:0px; margin-top:113px" />
    </div>
 
    </form>
 
<p style="color:#808080; text-align:center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>
