<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Vista_Menu" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="../Styles/ThemeMenuStyle/css/bootstrap.css" rel="stylesheet" />

    <!-- FONTAWESOME STYLES-->
    <link href="../Styles/ThemeMenuStyle/css/font-awesome.css" rel="stylesheet" />

    <!-- CUSTOM STYLES-->
    <link href="../Styles/ThemeMenuStyle/css/custom.css" rel="stylesheet" />

    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>



    <form id="form1" runat="server">



    <div id="wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        &nbsp;</a></div>

                <span class="logout-spn">
                    <a href="Login.aspx" style="color: #fff;">SALIR</a>

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">



                    <li class="active-link">
                        <a href="index.html"><i class="fa fa-desktop "></i>Inicio <span class="badge">Included</span></a>
                    </li>


                    <li>
                        <a href="ui.html"><i class="fa fa-table "></i>Opción 1  <span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="blank.html"><i class="fa fa-edit "></i>Opción 2  <span class="badge">Included</span></a>
                    </li>


<%--                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li>--%>

                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>MENÚ PRINCIPAL</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                            <strong>Bienvenido <asp:Label ID="usuarioconectado" runat="server" Text="Label"></asp:Label>
&nbsp; ! </strong>No tiene tarea pendiente para hoy.
                        </div>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row text-center pad-top">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>--%>
                    </div>

                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>--%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4>
                      </a>
                      </div>--%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                       <%-- <div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-users fa-5x"></i>
                                <h4>See Users</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-key fa-5x"></i>
                                <h4>Admin </h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%-- <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>--%>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row text-center pad-top">

                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-clipboard fa-5x"></i>
                                <h4>All Docs</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-gear fa-5x"></i>
                                <h4>CONFIGURACIONES</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--  <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4>
                      </a>
                      </div>
                        --%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-bell-o fa-5x"></i>
                                <h4>Notifications </h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-rocket fa-5x"></i>
                      <h4>Launch</h4>
                      </a>
                      </div>
                        --%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6" style="width: 254px;
    margin-left: 191px;">
                        <div class="div-square">
                           <%-- <a href="blank.html">--%>
                               <%-- <i class="fa fa-user fa-5x">--%>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/1461802133_edit_user.png" OnClick="ImageButton1_Click1" />
                          <%--  </i>--%>
                                <h4>GESTIÓN USUARIOS</h4>
                            <%--</a>--%>
                        </div>


                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row text-center pad-top">


                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%-- <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>--%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%-- <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4>
                      </a>
                      </div>
                        --%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6" style="
    position: absolute;
    margin-top: -218px;
    width: 254px;
    margin-left: 515px;
">
                        <div class="div-square">
                        <%--    <a href="blank.html">--%>
                               <%-- <i class="fa fa-users fa-5x">--%>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/1460312319_user.png" OnClick="ImageButton2_Click1" />
                            <%--</i>--%>
                                <h4>GESTIÓN CLIENTES</h4>
                           <%-- </a>--%>
                        </div>


                    </div>
                    <%--<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-key fa-5x"></i>
                                <h4>Admin </h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                           <a href="#" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>--%>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%-- <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>--%>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row text-center pad-top">
                    <%--<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-rocket fa-5x"></i>
                                <h4>Launch</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <%--  <div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-clipboard fa-5x"></i>
                                <h4>All Docs</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        <%--<div class="div-square">
                            <a href="blank.html">
                                <i class="fa fa-gear fa-5x"></i>
                                <h4>Settings</h4>
                            </a>
                        </div>--%>


                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4>
                      </a>
                      </div>--%>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                    <%--<div class="div-square">
                        <a href="blank.html">
                            <i class="fa fa-bell-o fa-5x"></i>
                            <h4>Notifications </h4>
                        </a>
                    </div>--%>


                </div>

                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                  <%--  <div class="div-square">
                        <a href="blank.html">
                            <i class="fa fa-user fa-5x"></i>
                            <h4>Register User</h4>
                        </a>
                    </div>--%>


                </div>
            </div>
            <!-- /. ROW  -->
            <div class="row text-center pad-top">



                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                    <%--<div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4>
                      </a>
                      </div>--%>
                </div>
                <%-- <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>See Users</h4>
                      </a>
                      </div>--%>
            </div>
            <%--    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-key fa-5x"></i>
                      <h4>Admin </h4>
                      </a>
                      </div>--%>
        </div>
        <%--<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>--%>
    </div>
    <%--<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>--%>
                     
                     
                  </div>
  <%--                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
              <%--        <div class="div-square">
 <%--                          <a href="blank.html" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>--%>
    <%--  </div>--%>
                     
                     
                  </div>
              </div>
                 <!-- /. ROW  -->
    <%--<div class="row">
        <div class="col-lg-12 ">
            <br />
            <div class="alert alert-danger">
                <strong>Want More Icons Free ? </strong>Checkout fontawesome website and use any icon <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">Click Here</a>.
            </div>

        </div>
    </div>--%>
    <!-- /. ROW  -->
    </div>
             <!-- /. PAGE INNER  -->
    </div>
         <!-- /. PAGE WRAPPER  -->
    </div>
    <div class="footer">


        <div class="row">
            <div class="col-lg-12">
                  <p style="color: white; text-align: center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
            </div>
        </div>
    </div>


    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->

    <script src="../Styles/ThemeMenuStyle/js/jquery-1.10.2.js"></script>

    <script src="../Styles/ThemeMenuStyle/js/bootstrap.min.js"></script>
    <script src="../Styles/ThemeMenuStyle/js/custom.js"></script>



    </form>



</body>
</html>


<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div>
        <img src="../Images/login2.png" style="width: 100%; height: 53px;" />
    </div>
    <form id="form1" runat="server">

        <p style="font-size: x-large; text-align: center; font-weight: bold">
            Menú Principal
        </p>

        <div>

            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/1460312319_user.png" OnClick="ImageButton1_Click" Style="margin-left: 500px" />


        </div>

        <asp:Label ID="Label1" runat="server" Text="Gestión de Usuarios" Style="margin-left: 493px; position: absolute; margin-top: 175px;"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Gestión de Clientes" Style="margin-left: 493px; position: absolute; margin-top: 10px;"></asp:Label>

        <asp:Label ID="Label4" runat="server"  ForeColor="Red" Text="Label" style="color: white; position:absolute; margin-top : -238px;margin-left: 10px;"></asp:Label>

        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/1460312986_sign-up.png" OnClick="ImageButton2_Click" Style="margin-left: 504px; margin-top: 44px;" />

        <asp:Label ID="Label3" runat="server" Text="afsdfasfasfas" style="
  margin-left: -46%;
  position: absolute;
  margin-top: -260px;
  color: white;"></asp:Label>

        <div>
        </div>
        <div>
            <img src="../Images/login2.png" style="width: 100%; height: 53px; padding-top: 0px; margin-top: 113px" />
        </div>

    </form>

    <p style="color: #808080; text-align: center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>


    <script>

    </script>

</body>
</html>--%>
