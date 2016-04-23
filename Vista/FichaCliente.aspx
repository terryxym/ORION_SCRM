<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FichaCliente.aspx.cs" Inherits="Vista_FichaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title></title>
     <script src="jquery-1.3.2.min.js" type="text/javascript"></script>
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../Scripts/jquery-1.11.3.min.js"></script>
    <script src="../Scripts/jquery-1.11.3.js"></script>
    <script src="../Scripts/jquery-ui.min.js"></script>
    <script src="../Scripts/jquery.min.js"></script>
     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="../Scripts/jquery-ui.css" rel="stylesheet" />
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <script src="../Scripts/JavaScript.js"></script>
    <%--  <script src="../Scripts/JavaScript.js"></script>--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <link href="../Styles/StyleSheet.css" rel="stylesheet" />

    <script>

        $(function () {
            $("#TxtCalendario").datepicker({
                //altField: "#TxtCalendario",
               
                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                numberOfMonths: 1,
                selectOtherMonths: true,
                minDate: '+0D',
                                maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",

               
            });
        });


        $(function () {
            $("#TxtFechaPasaporte").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                numberOfMonths: 1,
                selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",


            });
        });

        $(function () {
            $("#TxtFechaProximaLlamada").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                numberOfMonths: 1,
                selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",


            });
        });


        $(function () {
            $("#TxtFechaNacimientoCliente").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                numberOfMonths: 1,
                selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",


            });
        });

        $(function () {
            $("#TxtFechaNacimientoConyugue").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                numberOfMonths: 1,
                selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",


            });
        });


        function nuevo() {
            window.location = ("EmailTemplate.html");
        }


        //funcion que bloquea todos lo dias expecto los que queremos habilitar para la seleccion
        //function noExcursion(date) {
        //    var day = date.getDay();


            // aqui indicamos el numero correspondiente a los dias que ha de bloquearse (el 0 es Domingo, 1 Lunes, etc...) en el ejemplo bloqueo todos menos los lunes y jueves.
            //return [(day != 0 && day != 6 && day != 2 && day != 4), ''];

        //};

    </script>
    <script>
        $.datepicker.regional['es'] = {
            closeText: 'Cerrar',
            prevText: '<Ant',
            nextText: 'Sig>',
            currentText: 'Hoy',
            monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
            dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
            weekHeader: 'Sm',
            dateFormat: 'dd/mm/yy',
            firstDay: 1,
            isRTL: false,
            showMonthAfterYear: false,
            yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
            $("#TxtCalendario").datepicker();
        });
    </script>
    <style type="text/css">
        .auto-style3 {
            width: 251px;
        }
        .auto-style6 {
            text-align: center;
            width: 130px;
        }
        .auto-style7 {
            width: 130px;
        }
        .auto-style8 {
            width: 135px;
        }
        #TextArea1 {
            height: 106px;
            width: 481px;
        }
        .auto-style9 {
            width: 75px;
        }
    </style>

</head>
<body>
    
    <form id="form1" runat="server">


            
        <div>

 <img src="../Images/login2.png" style="width: 100%; height: 53px;padding-bottom: 0px;" />
            <div><p>
                    Buscar Cliente
                </p>

                <asp:TextBox ID="TxtIdentificacionBuscar" runat="server" style="width: 128px"></asp:TextBox>
                <asp:Button ID="BtnBuscarCliente" runat="server" OnClick="Button1_Click" Text="Buscar Cliente Sin Ficha" Width="208px" />
                <p>
                    Identificación:
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar Cliente con Ficha" />
                </p>

            </div>
        </div>
    <p style="text-align:center; font-size:x-large;font-weight:bold">
        Ficha Clientes
    </p>


            
    <%-- <div style="background-color: #CDDC39;height:30px;text-align: center;padding-top: 23px;font-weight: bold;font-size: large;color: #9E9E9E;border-top-left-radius: 49px;border-top-right-radius: 49px;width: 925px;margin-left: 231px;margin-right: auto;/* padding-bottom: 18px; */border-bottom-left-radius: 49px;border-bottom-right-radius: 49px;">
           
        <a href="#" id="ficha" >Ficha Principal Cliente</a>
       
        </div>
             <section id="showficha" style=" display:none">--%>

<a href="#" id="ocultaficha" style="
    margin-left: 152px;
    font-weight: bold;
    color: #F44336;
    font-size: large;">Ocultar</a>
    
        <table style="
    margin-top: 1px;
    margin-left: 113px;
    width: 89%;
    height: 500px;
    ">

            <tr style="background-color:#2196F3">
                
                <td class="auto-style6" style="border-top-left-radius:33px; text-align:center; border-top-right-radius:33px; font-weight:bold">
                   
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Primer Nombre:
                    </p>
                    <asp:TextBox ID="TxtPrimerNombre" runat="server" style="width:154px;text-align: center;margin-left: 26px;margin-right: 33px; background-color:#9E9E9E"  ReadOnly="True"></asp:TextBox>
                </td>
                
                <td class="auto-style9" style="border-top-left-radius:33px; border-top-right-radius:33px">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Segundo Nombre:
                    </p>

                    <asp:TextBox ID="TxtSegundoNombre" runat="server" style="text-align:center; margin-left: 123px;margin-right: 33px; Height:16px; Width:154px;  background-color:#9E9E9E ;margin-bottom:10px;" ReadOnly="True"></asp:TextBox>

                </td>
                
                <td class="auto-style3" style="border-top-left-radius:33px; border-top-right-radius:33px">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Primer Apellido:
                    </p>
                    <asp:TextBox ID="TxtPrimerApellido" runat="server" style="width:154px;text-align: center;margin-left: 54px;margin-right: 33px;" ReadOnly="True"></asp:TextBox>

                </td>
               
                <td class="auto-style8" style="border-top-left-radius:33px; border-top-right-radius:33px">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Segundo Apellido:
                    </p>
                    
                    <asp:TextBox ID="TxtSegundoApellido" runat="server" style="width:154px;text-align: center; background-color:#9E9E9E;margin-left: 67px;margin-right: 33px;" ReadOnly="True"></asp:TextBox>

                </td>
            </tr>
            <tr style="background-color:#2196F3">
               
                <td class="auto-style7">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Fecha de Nacimiento:
                    </p>
                    

                    <asp:TextBox ID="TxtFechaNacimientoCliente" runat="server" style="width:154px;text-align: center;margin-left: 26px; margin-bottom:10px;margin-right: 33px;"></asp:TextBox>

                </td>
               
                <td class="auto-style9" style="font-weight:bold; text-align:center">

                    <p style="
    font-weight: bold;
    text-align: center;">
                        Identificación:
                    </p>
                    

                    <asp:TextBox ID="TxtIdentificacion" runat="server" style="width:154px;text-align: center;margin-left: 26px; background-color:#9E9E9E; margin-right: 33px;" ReadOnly="True"></asp:TextBox>

                </td>
                
                <td class="auto-style3">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Tipo de Identificación:
                        
                    </p>
                    <asp:TextBox ID="TxtTipoIdentificacion" runat="server" Style="margin-left:43px; background-color:#9E9E9E" ReadOnly="True"></asp:TextBox>
                </td>
                
                <td class="auto-style8">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Edad:
                    </p>
                    
                    <asp:TextBox ID="TxtEdad" runat="server" style="text-align: center;margin-left: 100px;margin-right: 100px;" Width="56px"></asp:TextBox>

                </td>
            </tr>
            <tr style="background-color:#2196F3">
                
                <td class="auto-style7" >
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Genero:
                    </p>
                    
                    <asp:RadioButtonList ID="RblGenero" runat="server" style="width:154px;text-align: center;margin-left: 
    18px;margin-right: 33px;">
                        <asp:ListItem>Hombre</asp:ListItem>
                        <asp:ListItem >Mujer</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                
                <td class="auto-style9">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Estado Civil:
                    </p>
                    
                    <asp:RadioButtonList ID="RBLEstadoCivil" runat="server" style="
    margin-left: 134px;" >
                        <asp:ListItem>Soltero</asp:ListItem>
                        <asp:ListItem>Casado</asp:ListItem>
                        <asp:ListItem>Otro</asp:ListItem>
                    </asp:RadioButtonList>

                </td>
                
                <td class="auto-style3">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Nacionalidad:
                    </p>
                    
                    <asp:DropDownList ID="DDLNacionalidad" runat="server" style="width:154px;text-align: center;margin-left: 54px;margin-right: 33px; height:27px">
                        <asp:ListItem>Colombiana</asp:ListItem>
                        <asp:ListItem>Española</asp:ListItem>
                        <asp:ListItem>Mexicana</asp:ListItem>
                        <asp:ListItem>Americana</asp:ListItem>
                        <asp:ListItem>Francesa</asp:ListItem>
                        <asp:ListItem>Argentina</asp:ListItem>
                        <asp:ListItem>Venezolana</asp:ListItem>
                        <asp:ListItem>Ecuatoriana</asp:ListItem>
                    </asp:DropDownList>

                </td>
                
                <td class="auto-style8">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Telefono:
                    </p>
                    
                    <asp:TextBox ID="TxtTelefono" runat="server" style="width:154px;text-align: center; background-color:#9E9E9E;margin-left: 67px;" ReadOnly="True"></asp:TextBox>

                </td>
            </tr>
            <tr style="background-color:#2196F3">
               
                <td class="auto-style7">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Celular:
                    </p>
                    
                    <asp:TextBox ID="TxtCelular" runat="server" style="width:154px; margin-bottom:10px;background-color:#9E9E9E; margin-left: 26px;margin-right: 33px;" ReadOnly="True"></asp:TextBox>

                </td>
               
                <td class="auto-style9">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Direccion de Residencia:
                    </p>
                   
                    <asp:TextBox ID="TxtDireccionResidencia" runat="server" Width="349px" style="text-align: center;margin-left: 26px;margin-right: 33px;"></asp:TextBox>

                </td>
                
                <td class="auto-style3">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Ciudad:
                    </p>
                    
                    <asp:DropDownList ID="DDLCiudad" runat="server" style="width:154px;text-align: center;margin-left: 54px; height:27px; margin-right: 33px;" DataSourceID="SqlDataSource2" DataTextField="NombreCiudad" DataValueField="NombreCiudad">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [NombreCiudad] FROM [TblCiudades]"></asp:SqlDataSource>

                </td>
                
                <td>
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Actividad Actual:
                    </p>
                  
                    <asp:DropDownList ID="DDLActividadActual" runat="server" style="width:190px;height: 27px;margin-left: 38px;" DataSourceID="SqlDataSource3" DataTextField="NombreActividad" DataValueField="NombreActividad" Width="190px">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [NombreActividad] FROM [ActividadActual]"></asp:SqlDataSource>

                </td>
                
            </tr>
            <tr style="background-color:#2196F3;">
                <td style =" border-bottom-left-radius:33px; border-bottom-right-radius:33px">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Tipo de Cliente:
                    </p>
                    <asp:TextBox ID="TxtClasificacion" runat="server" Width="349px" style="text-align: center;margin-left: 26px;background-color:#9E9E9E;margin-right: 33px;" ReadOnly="True"></asp:TextBox>
                    
                </td>
                <td style ="border-bottom-left-radius:33px; border-bottom-right-radius:33px" class="auto-style9">
                    <p style="
    font-weight: bold;
    text-align: center;">
                        Asesor Asignado   
                        </p>
                     <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="AsesorAsignado" DataValueField="AsesorAsignado">
                        </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [AsesorAsignado] FROM [Clientes]"></asp:SqlDataSource>
                </td>
                <td style ="border-bottom-left-radius:33px; border-bottom-right-radius:33px" >
                                    <p style="
    font-weight: bold;
    text-align: center;">
                        E-mail:
<asp:TextBox ID="TxtEmail" runat="server" Width="349px" style="text-align: center;margin-left: 26px;margin-right: 33px;background-color:#9E9E9E" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            
        </table>
        </section>

        <div style="background-color: #FF9900;height:30px;text-align: center; margin-top:10px; padding-top: 23px;background-color:#9E9E9E;font-weight: bold;font-size: large;color: #9E9E9E;border-top-left-radius: 49px;border-top-right-radius: 49px;width: 928px;margin-left: 228px;margin-right: auto;/* padding-bottom: 18px; */border-bottom-left-radius: 49px;border-bottom-right-radius: 49px;">
        <a href="#" id="elemento"  >Información Familiar</a>
        
        </div>
     
            <section id="show" style=" display:none">
<a href="#" id="ocultar" style="
    margin-left: 152px;
    font-weight: bold;
    color: #F44336;
    font-size: large;">Ocultar</a>
        <table style="margin-left:113px; width:90%">
        
            
            <tr style="background-color:#2196F3">
                <td style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;">
                    <p style="text-align: center; font-weight: bold;">Nombre del Conyugue: </p>
                    

                    <asp:TextBox ID="TxtNombreConyugue" runat="server" style="margin-bottom:10px; margin-left: 24%"></asp:TextBox>

                </td>
                <td  style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;">
                    <p style="text-align: center; font-weight: bold;">
                        Apellidos del Conyugue:
                    </p>
                    
                    <asp:TextBox ID="TxtApellidoConyugue" runat="server" style="margin-bottom:10px; margin-left: 24%"></asp:TextBox>

                </td>
                
                     <td style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;">
                    <p style="text-align: center; font-weight: bold;">
                        Fecha Nacimiento Conyugue:
                       
                    </p>
                        
                    <asp:TextBox ID="TxtFechaNacimientoConyugue" runat="server" style="
    margin-left: 36%; width:100px"></asp:TextBox>
                         <%--<div id="datepicker2">
                    </div>--%>
                </td>
           
            </tr>
         
            <tr style="background-color:#2196F3">
                <td style="
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;" >
                    <p style="text-align: center; font-weight: bold;">
                        Edad del Conyugue:
                    </p>
                    
                    <asp:TextBox ID="TxtEdadConyugue" runat="server" style="margin-bottom:10px; margin-left: 41%; width:28px"></asp:TextBox>
                </td>
                <td style="
    border-bottom-left-radius: 40px;
    border-bottom-right-radius: 40px;">
                    <p style="text-align: center; font-weight: bold;" >
                        Profesión del Conyugue:
                        
                    </p>
                    <asp:DropDownList ID="DDLProfesionConyugue" runat="server" DataSourceID="SqlDataSource3" DataTextField="NombreActividad" DataValueField="NombreActividad" style="margin-left:27%;height:26px">
                        </asp:DropDownList>
                </td>
            </tr>

        </table>
                </section>
        
     <div style="background-color: #E91E63;height:30px;text-align: center;padding-top: 23px; margin-top:10px; font-weight: bold;font-size: large;color: #9E9E9E;border-top-left-radius: 49px;border-top-right-radius: 49px;width: 925px;margin-left: 231px ;margin-right: auto;/* padding-bottom: 18px; */border-bottom-left-radius: 49px;border-bottom-right-radius: 49px;">
        <a href="#" id="visa"  >Pasaporte y Visa</a>
         <asp:Label ID="LbMensaje" runat="server" Text="Label"></asp:Label>
       
        </div>

        <section id="showvisa" style=" display:none">
             <a href="#" id="ocultarvisa" style="
    margin-left: 152px;
    font-weight: bold;
    color: #F44336;
    font-size: large;">Ocultar</a>

            <table style="width:90%; margin-left:112px">
                    <tr style="background-color:#2196F3; height: 114px; width:90%; margin-left:112px" >
                        <td style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
    border-bottom-right-radius:40px;
    border-bottom-left-radius:40px">
                            <p style="
    text-align: center;
    font-weight: bold;
">Número:</p>
                            
                            <asp:TextBox ID="TxtNumeroPasaporte" runat="server" style="margin-left:29%"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        </td>
                        <td style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
     border-bottom-right-radius:40px;
    border-bottom-left-radius:40px">
                            <p style="
    text-align: center;
    font-weight: bold;
">
                                Fecha de Vencimiento de Pasaporte:
                            </p>
                            
                            <asp:TextBox ID="TxtFechaPasaporte" runat="server" Style="margin-left:29%"></asp:TextBox>
                        </td>
                        <td style="
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
     border-bottom-right-radius:40px;
    border-bottom-left-radius:40px">
                            <p style="
    text-align: center;
    font-weight: bold;
">
                                Visa Usa Vigente:
                            </p>
                            
                            <asp:RadioButtonList ID="RBLVisaVigente" runat="server" style="
    margin-left: auto;
    margin-right: auto;
" >
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
            </table>
           
        </section>
           
     <div style="background-color: white;">
                <div style="background-color: #009688;height:30px;text-align: center;padding-top: 23px; margin-top:10px; font-weight: bold;font-size: large;color: #9E9E9E;border-top-left-radius: 49px;border-top-right-radius: 49px;width: 922px;margin-left: 235px;margin-right: auto;/* padding-bottom: 18px; */border-bottom-left-radius: 49px;border-bottom-right-radius: 49px;">

        <a href="#" id="seguimiento" >Seguimiento Cliente</a>
         
        
       
        </div>
        

        <%--  <section id="showseguimiento" style="display:none">

             <a href="#" id="ocultarseguimiento" style="
    margin-left: 152px;
    font-weight: bold;
    color: #F44336;
    font-size: large;">Ocultar</a>--%>
              
        <table style="
    width: 92%;
    margin-left: 104px;
    height: 107px;
">
            <tr style="
    background-color: #2196F3;">
                <td style="
    border-top-left-radius: 40px; border-top-right-radius:40px; ">
                    <asp:RadioButtonList ID="RBLNoLlamar" runat="server" Width="26px" style="
    margin-left: 41%;">
                        <asp:ListItem>No llamar</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="
    border-top-left-radius: 40px; border-top-right-radius:40px">
                    <p style="
    text-align: center;
    font-weight: bold;">
                        Medio de Contacto
                    </p>
                   <asp:DropDownList ID="DDLMedioContacto" runat="server" style="margin-left:35%; Height:27px">
                       <asp:ListItem>Correo Electrónico</asp:ListItem>
                       <asp:ListItem>Teléfono Fijo</asp:ListItem>
                       <asp:ListItem>Celular</asp:ListItem>
                       <asp:ListItem>WhatsApp</asp:ListItem>
                       <asp:ListItem>Facebook</asp:ListItem>
                    </asp:DropDownList>
&nbsp;</td>
                <td style="
    border-top-left-radius: 40px; border-top-right-radius:40px; ">
                   <p style="
    text-align: center;
    font-weight: bold;">
                       Fecha Llamada:
                      
                   </p>
                     <asp:TextBox ID="TxtFechaProximaLlamada" runat="server" Style="margin-left:33%"></asp:TextBox>
                </td>

            </tr>
         
        </table>
        <table style="
    width: 92%;
    margin-left: 104px;
">
            
            <tr style="
    background-color: #2196F3;">
                <td style="
   border-bottom-left-radius:40px; border-bottom-right-radius:40px">
                    <p style="
    text-align: center;
    font-weight: bold;">
                         Detalle Seguimiento:
                         
                    </p>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Agregar Seguimiento" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                    <asp:TextBox ID="TxtSeguimiento" runat="server" style="
    margin-left: 188px;
    width: 800px;
    height: 200px;
    margin-bottom: 45px;" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
                
            </tr>
        </table>
              </section>
        </div>
    
   <div>
        <img src="../Images/login2.png" style="width: 100%; height: 53px; padding-top: 207px; margin-top: 139px; margin-bottom: -16px; padding-bottom: 3px;" /><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/1460753968_document-save-as.png" style="
    margin-top: 2%;
    padding-top: 26px;
    position: absolute;
    margin-left: -53%;
" OnClick="ImageButton1_Click"/>
       <p style="
    margin-top: -14%;
    position: absolute;
    margin-left: 48%;
    font-size: large;
    font-weight: bold;">
           Guardar
       </p>
&nbsp;</div>
 
    </form>
    
<p style="color:#808080; text-align:center">© 2016, Andrés Correa H. Todos los derechos reservados.</p>
</body>
</html>
