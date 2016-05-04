<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarCliente.aspx.cs" Inherits="Vista_AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>



    <title></title>
    <link href="../Styles/ThemeRegisterUser/css/reset.css" rel="stylesheet" />
    <link href="../Styles/ThemeRegisterUser/css/style.css" rel="stylesheet" />
    <script src="../Styles/ThemeRegisterUser/js/index.js"></script>
    </head>
<body >
    <div class="header">
          </div>
   <form   id="msform" runat="server">
  
  <!-- progressbar -->
  <ul id="progressbar">
   <%-- <li class="active">Datos Inicio de Sesión</li>
    <li>Datos Personales</li>--%>
        <%--<li>Personal Details</li>--%>
  </ul>
  <!-- fieldsets -->
  <fieldset id="formClientes" >
    <h2 class="fs-title">Crear cuenta de Usuario</h2>
    <h3 class="fs-subtitle"></h3>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtIdentificacion" ErrorMessage="*Ingrese solo números" style="color: Red; visibility: visible; position: absolute; margin-top: 57px;" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
     <asp:TextBox ID="TxtIdentificacion" runat="server" placeholder="Identificación"></asp:TextBox>
    <asp:TextBox ID="TxtPrimerNombre" runat="server"  placeholder="Primer Nombre"></asp:TextBox>
       <asp:TextBox ID="TxtSegundoNombre" runat="server" TextMode="Password" placeholder="Segundo Nombre"></asp:TextBox>
  <asp:TextBox ID="TxtPrimerApellido" runat="server" placeholder="Primer Apellido"></asp:TextBox>
    <asp:TextBox ID="TxtSegundoApellido" runat="server" placeholder="Segundo Apellido"></asp:TextBox>
      
                    <asp:DropDownList ID="DDlTipoIdentificacion" runat="server"  class="DropDownList">
                        <asp:ListItem>SELECCIONE EL TIPO DE IDENTIFICACIÓN</asp:ListItem>
                        <asp:ListItem>Cedula de Ciudadanía</asp:ListItem>
                        <asp:ListItem>Cedula de Extranjería</asp:ListItem>
                        <asp:ListItem>Nit</asp:ListItem>
                        <asp:ListItem>Nuip</asp:ListItem>
                        <asp:ListItem>Pasaporte Americano</asp:ListItem>
                    </asp:DropDownList>

       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtTelefono" ErrorMessage="*Ingrese solo números" style="color: Red; visibility: visible; position: absolute; margin-top: 116px; margin-left: -63%;" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>

       <asp:TextBox ID="TxtTelefono" runat="server" placeholder="Teléfono"></asp:TextBox>
        <asp:TextBox ID="TxtCelular" runat="server" placeholder="Celular"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtCelular" ErrorMessage="*Ingrese solo números" style="color: Red; visibility: visible; position: absolute; margin-top: 57px; margin-left: -63%;" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TxtEmail" runat="server" placeholder="E-mail"></asp:TextBox>
     
      <asp:DropDownList ID="DDlClasificacion" runat="server" class="DropDownList" Font-Bold="True">
                        <asp:ListItem>SELECCIONE LA CLASIFICACIÓN</asp:ListItem>
                        <asp:ListItem>VIP</asp:ListItem>
                        <asp:ListItem>Viajero Frecuente</asp:ListItem>
                        <asp:ListItem>Ocasional</asp:ListItem>
                        <asp:ListItem>Grupos</asp:ListItem>
                        <asp:ListItem>Otros</asp:ListItem>
                    </asp:DropDownList>
       
 <%-- <input type="button" name="previous" class="previous action-button" value="Anterior" />--%>
      <br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Formato de E-mail invalido" style="color: Red; visibility: visible; position: absolute; margin-top: -12.5%; margin-left: -19%; top: 818px; left: 234px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      <asp:Button ID="BtnEnviar" runat="server" CssClass="action-button" OnClick="BtnEnviar_Click" Text="Enviar" Font-Bold="True" />
  </fieldset>
   <asp:Label ID="LbMensaje" runat="server" style="color:Red;position: absolute;margin-left: 1px; margin-top: -10%; width:75%;"></asp:Label>
     
       </form>

     <div id="footerAgregarCliente">
        
        <p style="color: white; text-align: center; margin-left:15%; padding-top: 19px; font-size: 13px;">© 2016 - Andrés Correa H - Todos los derechos reservados.</p>

    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
</body>
</html>


