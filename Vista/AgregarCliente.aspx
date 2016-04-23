<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarCliente.aspx.cs" Inherits="Vista_AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 336px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 181px;
            height: 26px;
        }
        .auto-style6 {
            width: 336px;
            height: 26px;
        }
    </style>
    </head>
<body style="width: 100%">
    <div >
         
         <img src="../Images/login2.png" style="width: 100%;height: 53px;margin-bottom: 50px;" />
     </div>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style4"; style="
    font-size: x-large;
    font-weight: bold;"
            >
            Registrar un nuevo Cliente</div>
    
        <table style="width: 647px;margin-left: auto;margin-right: auto;margin-top: 22px;height: 524px;border-style: solid;color: rgb(14, 13, 12);border-color: #9E9E9E;border-radius: 10px;padding-top: 22px;padding-bottom: 27px;padding-left: 45px;">
          
                <td class="auto-style3" style="
    font-weight: normal;">
                    Identificación
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtIdentificacion" runat="server" Width="235px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="">
                    Primer Nombre
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtPrimerNombre" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style3" ,>
                    Segundo Nombre
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtSegundoNombre" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5" ,>
                    Primer Apellido
                </td>
                <td class="auto-style6">

                    <asp:TextBox ID="TxtPrimerApellido" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style3",>
                    Segundo Apellido</td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtSegundoApellido" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style3" ,>
                    Tipo de Identificación</td>
                <td class="auto-style2">

                    <asp:DropDownList ID="DDLTipoIdentificacion" runat="server" Font-Bold="True">
                        <asp:ListItem>SELECCIONE EL TIPO DE IDENTIFICACIÓN</asp:ListItem>
                        <asp:ListItem>Cedula de Ciudadanía</asp:ListItem>
                        <asp:ListItem>Cedula de Extranjería</asp:ListItem>
                        <asp:ListItem>Nit</asp:ListItem>
                        <asp:ListItem>Nuip</asp:ListItem>
                        <asp:ListItem>Pasaporte Americano</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>

                    Teléfono</td>
                <td>

                    <asp:TextBox ID="TxtTelefono" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    Celular</td>
                <td>

                    <asp:TextBox ID="TxtCelular" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    E-mail</td>
                <td>

                    <asp:TextBox ID="TxtEmail" runat="server" Width="235px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>

                    Clasificación</td>
                <td>

                    <asp:DropDownList ID="DDLTipo" runat="server" Font-Bold="True">
                        <asp:ListItem>SELECCIONE LA CLASIFICACIÓN</asp:ListItem>
                        <asp:ListItem>VIP</asp:ListItem>
                        <asp:ListItem>Viajero Frecuente</asp:ListItem>
                        <asp:ListItem>Ocasional</asp:ListItem>
                        <asp:ListItem>Grupos</asp:ListItem>
                        <asp:ListItem>Otros</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>

                    <asp:ImageButton ID="ImaBtnAgregar" runat="server" ImageUrl="~/Images/1460411713_ic_insert_invitation_48px.png" OnClick="ImageButton1_Click" style="
    margin-top: 43px;" />

                    <asp:Label ID="Label1" runat="server" Text="Agregar Nuevo Cliente" style="
    margin-left: -132px;
    margin-top: 168px;
    position: absolute;" Font-Bold="True" ></asp:Label>

                </td>
            </tr>

        </table>
    

        <asp:Label ID="LbMensaje" runat="server" ForeColor="Red" style="color:Red;margin-left: 619px;margin-top: -200px;position: absolute;"></asp:Label>
    
    </div>

    </form>
    <div>
        <img src="../Images/login2.png" style=" width: 100%; height: 53px; padding-top:0px; margin-top:115px" />
    </div>
    <p style="color:#808080; text-align:center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>


