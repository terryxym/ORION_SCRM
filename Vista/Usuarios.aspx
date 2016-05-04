<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="Vista_Usuarios" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>ORION CRM 1.0 - Agregar Usuario</title>
    
    
    
<link href="../Styles/ThemeRegisterUser/css/reset.css" rel="stylesheet" />
    <link href="../Styles/ThemeRegisterUser/css/style.css" rel="stylesheet" />

  </head>
    
  <body>
      
      <div class="header">
          </div>
    <!-- multistep form -->
<form id="msform" runat="server">
    
  <!-- progressbar -->
  <ul id="progressbar">
   <%-- <li class="active">Datos Inicio de Sesión</li>
    <li>Datos Personales</li>--%>
        <%--<li>Personal Details</li>--%>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Crear cuenta de Usuario</h2>
    <h3 class="fs-subtitle"></h3>
     <asp:TextBox ID="TxtNombreUsuario" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
       <asp:TextBox ID="ConfirmarPassword" runat="server" TextMode="Password" placeholder="Confirmar Password"></asp:TextBox>
  <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombres"></asp:TextBox>
    <asp:TextBox ID="TxtApellidos" runat="server" placeholder="Apellidos"></asp:TextBox>
       <asp:TextBox ID="TxtCorreo" runat="server" placeholder="Correo Electronico"></asp:TextBox>
     
     
       <asp:DropDownList ID="DdlRol" runat="server">
                        <asp:ListItem>SELECCIONE ROL</asp:ListItem>
                        <asp:ListItem>USUARIO</asp:ListItem>
                        <asp:ListItem>DIRECTIVO</asp:ListItem>
                        <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                    </asp:DropDownList>
      
 <%-- <input type="button" name="previous" class="previous action-button" value="Anterior" />--%>
      <br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Formato de E-mail invalido" style="color: Red; visibility: visible; position: absolute; margin-top: -12.5%; margin-left: -19%;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      <asp:Button ID="BtnEnviar" runat="server" CssClass="action-button" OnClick="Button1_Click" Text="Enviar" Font-Bold="True" />
      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="ConfirmarPassword" ErrorMessage="El Password no coincide" style="color: Red;  visibility: visible; position: absolute; margin-top: -52.5%; margin-left: -43%;"></asp:CompareValidator>
  </fieldset>
  <fieldset>
    <%--<h2 class="fs-title">Información Personal</h2>
    <h3 class="fs-subtitle">Ingresar información personal del usuario</h3>
    <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombres"></asp:TextBox>
    <asp:TextBox ID="TxtApellidos" runat="server" placeholder="Apellidos"></asp:TextBox>
      <asp:TextBox ID="TxtCorreo" runat="server" placeholder="E-mail"></asp:TextBox>
       <asp:DropDownList ID="DdlRol" runat="server">
                        <asp:ListItem>SELECCIONE ROL</asp:ListItem>
                        <asp:ListItem>USUARIO</asp:ListItem>
                        <asp:ListItem>DIRECTIVO</asp:ListItem>
                        <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                    </asp:DropDownList>--%>
    <input type="button" name="previous" class="previous action-button" value="Anterior" />
    

     <%-- <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" class="submit action-button"  Text="Enviar"  />--%>
      
  </fieldset>
    <%--<fieldset>
    <h2 class="fs-title">Personal Details</h2>
    <h3 class="fs-subtitle">We will never sell it</h3>
    <input type="text" name="fname" placeholder="First Name" />
    <input type="text" name="lname" placeholder="Last Name" />
    <input type="text" name="phone" placeholder="Phone" />
    <textarea name="address" placeholder="Address"></textarea>
    <input type="button" name="previous" class="previous action-button" value="Previous" />
  
  </fieldset--%>
    <asp:Label ID="LbMensaje" runat="server" style="color:Red;position: absolute;margin-left: 1px; margin-top: -14%; width:75%;"></asp:Label>

    <%-- <div ID="footer" runat="server">


        <div class="row">
            <div class="col-lg-12">
                  <p style="color: white; text-align: center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
            </div>
        </div>
    </div>--%>
     
</form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

  
<script src="../Styles/ThemeRegisterUser/js/index.js"></script>
    
   
   <div class="footer">
        
        <p style="color: white; text-align: center; margin-left:15%; padding-top: 19px; font-size: 13px;">© 2016, Andrés Correa H. Todos los derechos reservados.</p>

    </div> 
  </body>
    
</html>


<%--<html xmlns="http://www.w3.org/1999/xhtml">
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
            width: 108px;
        }
    </style>
    </head>
<body >
    <div>
       <img src="../Images/login2.png" style="width: 100%; height: 53px;" />
    </div>
    <form id="form1" runat="server">
    <div>
    
        <div class="auto-style4" style="text-align:center;padding-top:13px;font-size:x-large; font-weight:bold">
            Registrar un nuevo usuario</div>
    
        <table style="width: 596px; margin-left: auto; margin-right: auto; margin-top: 22px; height:347px; border-style: solid; color: rgb(14, 13, 12); border-color: rgb(255, 152, 0); border-radius: 10px; padding-top: 22px; padding-bottom: 149px; padding-left: 45px;">
          
                <tr class="auto-style3">
                    <td class="auto-style5">
    Nombre de Usuario
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtNombreUsuario" runat="server" Height="23px" Width="332px"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Contraseña
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Height="23px" Width="332px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Nombres
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtNombre" runat="server" Height="23px" Width="332px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Apellidos
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtApellidos" runat="server" Height="23px" Width="332px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Correo Electrónico
                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TxtCorreo" runat="server" Height="23px" Width="332px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="El formato de correo es incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Rol de Usuario
                </td>
                <td class="auto-style2">

                    <asp:DropDownList ID="DdlRol" runat="server" Height="23px" Width="332px">
                        <asp:ListItem>SELECCIONE ROL</asp:ListItem>
                        <asp:ListItem>USUARIO</asp:ListItem>
                        <asp:ListItem>DIRECTIVO</asp:ListItem>
                        <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
            
        </table>
        <div>
            <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" style="text-align: center;height: 26px;margin-left: 625px;margin-top: -81px;position: absolute;height: 55px;width: 118px;background-color: #FF9800;color: white;font-weight: bold;" Text="Agregar Usuario" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LbMensaje" runat="server" style="color:Red;position: absolute;margin-left: 442px; margin-top: -139px;"></asp:Label>

    </div>
    </div>
    </form>
    <div>
        <img src="../Images/login2.png" style=" width: 100%; height: 53px; padding-top:0px; margin-top:27px" />
    </div>
 
<p style="color:#808080; text-align:center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>--%>
