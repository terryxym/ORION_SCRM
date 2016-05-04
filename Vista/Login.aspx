<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Vista_Login" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ORION CRM 1.0</title>
    <link rel="stylesheet" href="../Styles/ThemeLogin/css/reset.css">
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
    <link rel="stylesheet" href="../Styles/ThemeLogin/css/style.css">
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://codepen.io/andytran/pen/vLmRVp.js'></script>
    <script src="../Styles/ThemeLogin/js/index.js"></script>
</head>

<body>


    <!-- Form Mixin-->
    <!-- Input Mixin-->
    <!-- Button Mixin-->
    <!-- Pen Title-->
    <div class="pen-title">
        <h1>BIENVENIDOS A ORION CRM</h1>
       <%-- <span>Pen <i class='fa fa-paint-brush'></i>+ <i class='fa fa-code'></i>by <a href='http://andytran.me'>Andy Tran</a></span>--%>
    </div>
    <!-- Form Module-->
    <div class="module form-module">
        <div class="toggle">
            <i class="fa fa-times fa-pencil"></i>
           <%-- <div class="tooltip">Click Me</div>--%>
        </div>
        <div class="form">
            <h2>Ingrese a su cuenta</h2>
             <form runat="server">
                <asp:DropDownList ID="DdlTipo" runat="server" >
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                    <asp:ListItem>USUARIO</asp:ListItem>
                    <asp:ListItem>DIRECTIVO</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TxtUsuario" runat="server" ></asp:TextBox>
                <asp:TextBox ID="TxtPassword" runat="server"   TextMode="Password"></asp:TextBox>
                <asp:Button runat="server" CssClass="form-moduleButton" Text="Ingresar" ID="btnLogin" OnClick="btnLogin_Click"></asp:Button>
            </form>
        </div>
        <div class="form">
          <%--  <h2>Create an account</h2>--%>
            <form>
                <input type="text" placeholder="Username" />
                <input type="password" placeholder="Password" />
                <input type="email" placeholder="Email Address" />
                <input type="tel" placeholder="Phone Number" />
                <button>Register</button>
            </form>
        </div>
       <%-- <div class="cta"><a href="http://andytran.me">Forgot your password?</a></div>--%>
    </div>





</body>
</html>







<%--<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        #login {
            height: 159px;
            width: 251px;
        }
    </style>
</head>
<body>
    <div>

        <img src="../Images/login2.png" style="width: 100%; height: 53px;" />
    </div>
    <form runat="server">
        <p style="text-align: center; font-size: x-large; font-weight: bold">
            Bienvenidos a SCRM &quot;Sistema de Gestión de Relaciones con el Cliente&quot;
        </p>

        <div id="login">
            <div id="titulologin2" style="text-align: center; margin-bottom: 100px">
                Iniciar Sesión
            </div>


            <section id="login2">
                <table>

                    <tr>
                        <td style="font-weight: bold">Tipo:</td>
                        <td>
                            <asp:DropDownList ID="DdlTipo" runat="server" Height="19px" Width="190px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>ADMINISTRADOR</asp:ListItem>
                                <asp:ListItem>USUARIO</asp:ListItem>
                                <asp:ListItem>DIRECTIVO</asp:ListItem>
                            </asp:DropDownList>
                        </td>

                    </tr>


                    <tr>
                        <td style="font-weight: bold">&nbsp;Usuario:
                        </td>
                        <td>s
            <asp:TextBox ID="TxtUsuario" runat="server" Height="19px" Width="190px"></asp:TextBox>
                        </td>

                    </tr>



                    <tr>
                        <td style="font-weight: bold">Password:
                        </td>
                        <td>


                            <asp:TextBox ID="TxtPassword" runat="server" Height="19px" Width="190px" TextMode="Password"></asp:TextBox>

                        </td>
                    </tr>







                </table>

            </section>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="86px" ImageUrl="~/Images/1460317539_Login.png" OnClick="ImageButton1_Click" Width="96px" />
            </p>
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Ingresar" Style="margin-left: 638px; padding-top: 100px; position: absolute; font-weight: bold;"></asp:Label>


            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>


            <img src="../Images/login2.png" style="width: 100%; height: 53px; padding-top: 0px; margin-top: 178px" />
        </div>

    </form>

    <p style="color: #808080; text-align: center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>--%>
