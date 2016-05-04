<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FichaCliente.aspx.cs" Inherits="Vista_FichaCliente" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta http-equiv="Content-Type" content="text/html">
    <title>Orion CRM - Ficha Cliente </title>
    <meta name="author" content="Jake Rocheleau">
    
    <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/switchery.min.css">
    <script type="text/javascript" src="js/switchery.min.js"></script>
    <script src="../Styles/ThemeFormClienteFicha/js/switchery.min.js"></script>
    <link href="../Styles/ThemeFormClienteFicha/css/styles.css" rel="stylesheet" />
    <link href="../Styles/ThemeFormClienteFicha/css/switchery.min.css" rel="stylesheet" />
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
                //numberOfMonths: 1,
                changeMonth: true,
                changeYear: true,
                selectOtherMonths: true,
                
                //minDate: '+0D',
                //maxDate: '+1M',
                //dateFormat: " DD, d MM, yy",


            });
        });


        $(function () {
            $("#TxtFechaPasaporte").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                //numberOfMonths: 1,
                selectOtherMonths: true,
                //minDate: '+D',
                //maxDate: '+1M',
                changeMonth: true,
                changeYear: true,
                selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+72M',
                //dateFormat: " DD, d MM, yy",


            });
        });

        $(function () {
            $("#TxtFechaProximaLlamada").datepicker({
                altField: "#TxtFechaProximaLlamada",

                //beforeShowDay: noExcursion,
                //showOtherMonths: true,
                //numberOfMonths: 1,
                //selectOtherMonths: true,
                minDate: '+0D',
                maxDate: '+0M',
                //dateFormat: " DD, d MM, yy",
              
                dateFormat: " DD, d MM, yy",



            });
        });


        $(function () {
            $("#TxtFechaNacimientoCliente").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                //numberOfMonths: 1,
                selectOtherMonths: true,
                //minDate: '+D',
                //maxDate: '+1M',
                changeMonth: true,
                changeYear: true,
                selectOtherMonths: true,
                yearRange: '-100:-6',
                //dateFormat: " DD, d MM, yy",


            });
        });

        $(function () {
            $("#TxtFechaNacimientoConyugue").datepicker({
                //altField: "#TxtCalendario",

                //beforeShowDay: noExcursion,
                showOtherMonths: true,
                //numberOfMonths: 1,
                selectOtherMonths: true,
                //minDate: '+D',
                //maxDate: '+1M',
                changeMonth: true,
                changeYear: true,
                selectOtherMonths: true,
                yearRange: '-100:-6',


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
        
        
        
        .ui-datepicker {
            width: 300px;
            height:230px;
            background:#ffffff;
            font-size: 16px;


         
        }

      
         

     .ui-datepicker th{
         color:#808080;
         font-size: .9em;
     }


     .ui-datepicker .ui-state-default 
     {
         background:#4cff00;
         color:#0026ff;
    
     }

     .ui-datepicker .ui-datepicker-header
     {
         background:#e8e1e1;
         color:#000000;

     }


     .ui-datepicker .ui-state-active{
         background:orange;
         color:#ff6a00;
     }
       
    </style>

</head>




<body>
    <div class="header">

       
        <asp:Label ID="LbUsuario" runat="server" Text="Label" style="
    font-size: 12px;
    font-weight: bold; margin-top:13px; position:absolute; margin-left:72px"></asp:Label>


       

            <asp:Label ID="LbRol" runat="server" Text="Label" style="
    font-size: 12px;
    font-weight: bold;
    margin-top: 34px;
    position:absolute;
    margin-left: 38px;
"></asp:Label>


        <asp:Label ID="LbUsuarioText" runat="server" Text="USUARIO:" style="
    font-size: 14px;
    font-weight: bold;
    position: absolute;
    margin-top: 10px;
"></asp:Label>
        <asp:Label ID="LbRolText" runat="server" Text="ROL:" style="
    font-size: 14px;
    font-weight: bold;
    margin-top: 32px;
    position: absolute;
   "></asp:Label>
    </div>



      
    
              
   
    <%--<div id="wrapper">--%>
      
            
         <h1>Ficha Cliente</h1>
            <h1 style="margin-top: 39%;position: absolute; margin-left: 30%;">Información Familiar</h1>
                 <h1 style="margin-top: 64%;position: absolute; margin-left: 30%;">Información Visa</h1>
                    <h1 style=" margin-top: 79%; position: absolute;  margin-left: 30%;">Seguimiento Cliente</h1>
 

        <form runat="server" >

         

             <asp:Label ID="LbMensajeError" runat="server" Text="Label"></asp:Label>
    
     <asp:Button  id="BuscarClienteSinFicha"  runat="server" Text="Buscar Cliente Sin Ficha" OnClick="BuscarClienteSinFicha_Click1" />
        <asp:Button runat="server" ID="BuscarClienteConFicha"  Text="Buscar Cliente con Ficha" OnClick="BuscarClienteConFicha_Click1" />

      <asp:TextBox runat="server" placeholder="Ingrese Cedula, Teléfono o Nombre" ID="TxtIdentificacionBuscar" ></asp:TextBox>


            <div class="col-2">
                <label>
                    Primer Nombre
	 
                    <asp:TextBox runat="server" placeholder="Primer Nombre" ID="TxtPrimerNombre" name="name" tabindex="1"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Segundo Nombre
	 
                    <asp:TextBox runat="server" placeholder="Segundo Nombre" id="TxtSegundoNombre" name="name" tabindex="2"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Primer Apellido
	 
                    <asp:TextBox runat="server" placeholder="Primer Apellido" id="TxtPrimerApellido" name="name" tabindex="3"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Segundo Apellido
	 
                    <asp:TextBox runat="server" placeholder="Segundo Apellido" id="TxtSegundoApellido" name="company" tabindex="4"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Fecha de Nacimiento
	 
                    <asp:TextBox runat="server" placeholder="Fecha de Nacimiento" id="TxtFechaNacimientoCliente" name="name" tabindex="5"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Identificacion
	 
                    <asp:TextBox runat="server" placeholder="Identificacion" id="TxtIdentificacion" name="name" tabindex="6"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Tipo de Identificacion
	 
                    <asp:TextBox runat="server" placeholder="Tipo de Identificacion" id="TxtTipoIdentificacion" name="name" tabindex="7"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Edad
	 
                    <asp:TextBox runat="server" placeholder="Edad" id="TxtEdad" name="company" tabindex="8"></asp:TextBox>
                </label>
            </div>

            <div class="col-2">
                <label>
                    Genero
	 
                    <asp:DropDownList ID="RblGenero" runat="server" RepeatDirection="Horizontal" style=" width: 133px; text-align: center; margin-left: 54px; margin-right: 33px; height: 20px; color: black; font-weight: 900; opacity: initial;">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Hombre</asp:ListItem>
                        <asp:ListItem Value="Mujer">Mujer</asp:ListItem>
                        <asp:ListItem>Otro</asp:ListItem>
                    </asp:DropDownList>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Estado Civil
                    <asp:DropDownList ID="RBLEstadoCivil" runat="server"  RepeatDirection="Horizontal"  style=" width: 133px; text-align: center; margin-left: 54px; margin-right: 33px; height: 20px; color: black; font-weight: 900; opacity: initial;">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Soltero</asp:ListItem>
                        <asp:ListItem>Casado</asp:ListItem>
                        <asp:ListItem>Otro</asp:ListItem>
                    </asp:DropDownList>
	 
<%--                    <input placeholder="Estado Civil" id="RBLEstadoCivil" name="name" tabindex="10">--%>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Nacionalidad 

	 <asp:DropDownList ID="DDLNacionalidad" runat="server" style="width:110px;text-align: center;margin-left: 70px;margin-right: 33px;height:20px;color: black;font-weight: 900;opacity: initial;">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Colombiana</asp:ListItem>
                        <asp:ListItem>Española</asp:ListItem>
                        <asp:ListItem>Mexicana</asp:ListItem>
                        <asp:ListItem>Americana</asp:ListItem>
                        <asp:ListItem>Francesa</asp:ListItem>
                        <asp:ListItem>Argentina</asp:ListItem>
                        <asp:ListItem>Venezolana</asp:ListItem>
                        <asp:ListItem>Ecuatoriana</asp:ListItem>
                    </asp:DropDownList>
                    <%--<input placeholder="Nacionalidad" id="DDLNacionalidad" name="name" tabindex="11">--%>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Teléfono
	 
                    <asp:TextBox runat="server" placeholder="Teléfono" id="TxtTelefono" name="company" tabindex="12"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Celular
	 
                    <asp:TextBox runat="server" placeholder="Celular" id="TxtCelular" name="name" tabindex="13"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Dirección de Residencia
	 
                    <asp:TextBox runat="server" placeholder=" Dirección de Residencia" id="TxtDireccionResidencia" name="name" tabindex="14"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Ciudad 
	 
                    <asp:DropDownList  ID="DDLCiudadCliente" runat="server" style=" width: 133px; text-align: center; margin-left: 54px; margin-right: 33px; height: 22px; color: black; font-weight: 900; opacity: initial;" DataSourceID="SqlDataSource2" DataTextField="NombreCiudad" DataValueField="NombreCiudad">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [NombreCiudad] FROM [TblCiudades]"></asp:SqlDataSource>
                    <%--<input placeholder="Ciudad" id="DDLCiudad" name="name" tabindex="15">--%>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Actividad Actual
	 <asp:DropDownList ID="DDLActividadActual" runat="server" style="width:190px;height: 19px;margin-left: 38px; opacity:initial; color:black" DataSourceID="SqlDataSource3" DataTextField="NombreActividad" DataValueField="NombreActividad" Width="190px" Font-Bold="True">
                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [NombreActividad] FROM [ActividadActual]"></asp:SqlDataSource>
                    <%--<input placeholder=" Actividad Actual" id="DDLActividadActual" name="company" tabindex="16">--%>
                </label>
            </div>

            <div class="col-2">
                <label>
                    Tipo de Cliente

                   
	 
                    <asp:TextBox runat="server" placeholder="Tipo de Cliente" id="TxtClasificacion" name="name" tabindex="17"></asp:TextBox>
                </label>
            </div>
            <div class="col-2">
                <label>
                    Asesor Asignado 
	 
                    <asp:DropDownList runat="server" style=" width: 133px; text-align: center; margin-left: 54px; margin-right: 33px; height: 20px; color: black; font-weight: 900; opacity: initial" placeholder="Asesor Asignado" id="DropDownList1" name="name" tabindex="18" DataSourceID="SqlDataSource4" DataTextField="usuarios" DataValueField="usuarios">
                        <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="Select (Nombre + ' ' + Apellidos) as usuarios from usuarios"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:orionConnectionString %>" SelectCommand="SELECT [AsesorAsignado] FROM [Clientes]"></asp:SqlDataSource>
                </label>
            </div>
            <div class="col-2">
                <label>
                    E-mail
	 
                    <asp:TextBox runat="server" placeholder=" E-mail" id="TxtEmail" name="E-mail" tabindex="19"></asp:TextBox>
                </label>
            </div>

<%--            <div class="informacionFamiliar">
            </div>

    --%>


    
  <div class="informacionFamiliar">

  </div>
  
  <div class="informacionFamiliar2">

  </div>
        

       




            <div class="col-3">
                <label>
                    Nombres de Conyugue 
	 
                    <asp:TextBox runat="server" placeholder="Nombres de Conyugue" id="TxtNombreConyugue" name="phone" tabindex="20"></asp:TextBox>
                </label>
            </div>
            <div class="col-3">
                <label>
                    Apellidos de Conyugue
	 
                    <asp:TextBox runat="server" placeholder="Apellidos de Conyugue" id="TxtApellidoConyugue" name="email" tabindex="21"></asp:TextBox>
                </label>
            </div>

            <div class="col-3">
                <label>
                    Fecha de Nacimiento Conyugue
	 
                    <asp:TextBox runat="server" placeholder="Fecha de Nacimiento Conyugue" id="TxtFechaNacimientoConyugue" name="email" tabindex="22"></asp:TextBox>
                </label>
            </div>

            <div class="col-3">
                <label>
                    Edad de Conyugue
	 
                    <asp:TextBox runat="server" placeholder="Edad de Conyugue" id="TxtEdadConyugue" name="email" tabindex="23"></asp:TextBox>
                </label>
            </div>

            <div class="col-5">
                <label>
                    Profesión del Conyugue
	 
                    <asp:DropDownList ID="DDLProfesionConyugue" runat="server" DataSourceID="SqlDataSource3" DataTextField="NombreActividad" DataValueField="NombreActividad" style="margin-left:43%;height:26px; color:black; opacity:initial; font-weight:bold">
                        </asp:DropDownList>
                    <%--<input placeholder="Profesión del Conyugue" id="DDLProfesionConyugue" name="email" tabindex="24">--%>
                </label>
            </div>


          <%--  <div class="informacionVisa">
            </div>--%>

    

<div class="informacionVisa">

  </div>
  
  <div class="informacionVisa2">

  </div>

        

       
            <div class="col-4">
                <label>
                    Número de Pasaporte
	 
                    <asp:TextBox runat="server" placeholder="Número de Pasaporte" id="TxtNumeroPasaporte" name="email" tabindex="25"></asp:TextBox>
                </label>
            </div>

            <div class="col-4">
                <label>
                    Fecha de Vencimiento Pasaporte
	 
                    <asp:TextBox runat="server" placeholder="Fecha de Vencimiento" id="TxtFechaPasaporte" name="email" tabindex="26"></asp:TextBox>
                </label>
            </div>

            <div class="col-4">
                <label>
                    Visa Vigente 
	 
                    <asp:DropDownList ID="RBLVisaVigente" runat="server" style=" width: 48px; text-align: center; margin-left: 140px; margin-right: 33px; height: 20px; color: black; font-weight: 900; opacity: initial" >
                                <asp:ListItem>Si</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
              <%--      <input placeholder="Visa Vigente" id="RBLVisaVigente" name="email" tabindex="27">--%>
                </label>
            </div>



            <div class="seguimientoCliente">
            </div>
        

  <div class="seguimiento">

  </div>
    <div class="seguimientoCliente2">

  </div>
        


        

        <div class="col-4">
                <label>No Llamar
                    <asp:DropDownList ID="RBLNoLlamar" runat="server" style=" width:105px; margin-left:110px; color:black; opacity:initial; font-weight:bold" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>No Llamar</asp:ListItem>
                    </asp:DropDownList>

                </label>

               

               
            </div>
              
            <div class="col-4">
                <label>
                    Medio de Contacto

                  <asp:DropDownList ID="DDLMedioContacto" runat="server" style="width:174px; margin-left:84px; color:black; opacity:initial; font-weight:bold">
                       <asp:ListItem></asp:ListItem>
                       <asp:ListItem>Correo Electrónico</asp:ListItem>
                       <asp:ListItem>Teléfono Fijo</asp:ListItem>
                       <asp:ListItem>Celular</asp:ListItem>
                       <asp:ListItem>WhatsApp</asp:ListItem>
                       <asp:ListItem>Facebook</asp:ListItem>
                    </asp:DropDownList>
                </label>
                
                    
            </div>

            <div class="col-4">
                <label>
                    Fecha de Llamada
	 
                    <asp:TextBox runat="server" placeholder="Fecha de Llamada" id="TxtFechaProximaLlamada" name="TxtFechaProximaLlamada"  ></asp:TextBox>
                </label>
                
            </div>

            <div class="col-5">
                <label>
                    Escribir Seguimiento
	 
                    <asp:TextBox runat="server" placeholder="Escribir Seguimiento" id="TxtSeguimiento" name="email" ></asp:TextBox>
                </label>
                
            </div>

            <div class="col-6">
                <label>
                    Detalles Seguimientos
	 
                  <asp:GridView runat="server" placeholder="Detalles Seguimientos" id="GridView1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                      <FooterStyle BackColor="White" ForeColor="#000066" />
                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                      <RowStyle ForeColor="#000066" />
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>

                </label>
                  
            </div>


        <div class="col-submit">
          
            
            <asp:Button ID="BtnActualizarInfo" runat="server" Text="Actualizar Información" CssClass="submitbtn" OnClick="BtnActualizarInfo_Click" />
              <asp:Button ID="BtnAgregarSeguimiento" runat="server" OnClick="Button1_Click1" CssClass="submibtn" Text="Agregar Seguimiento" />
            <asp:Button ID="BtnMonstrarSeguimientos" runat="server" OnClick="BtnSeguimiento_Click" CssClass="submibtn" Text="Mostrar Seguimiento" />
        </div>

       
  </form>
 
  


        <script type="text/javascript">
            var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

            elems.forEach(function (html) {
                var switchery = new Switchery(html);
            });
</script>
    <div class="footer">
        
        <p style="color: white; text-align: center; padding-top: 19px; font-size: larger;">© 2016, Andrés Correa H. Todos los derechos reservados.</p>

    </div>
</body>



  <%--  <div class="row">--%>

<%--</div>--%>

</html>
