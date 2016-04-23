using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class EntidadCliente
{

    public int Codigo { set; get; }
    public string PrimerNombreCliente { set; get; }
    public string SegundoNombreCliente { set; get; }
    public string PrimerApellidoCliente { set; get; }
    public string SegundoApellidoCliente { set; get; }
    public string TipoIdentificacion { set; get; }
    public string Telefono { set; get; }
    public string Celular { set; get; }
    public string Email { set; get; }
    public string Clasificacion { set; get; }
    public string FechaNacimiento { set; get; }
    public string Identificacion { set; get; }
    public int Edad { set; get; }
    public string Genero { set; get; }
    public string EstadoCivil { set; get; }
    public string Nacionalidad { set; get; }
    public string DireccionResidencia { set; get; }
    public string Ciudad { set; get; }
    public string ActividadActual { set; get; }
    public string TipoCliente { set; get; }
    public string AsesorAsignado { set; get; }
    public string NombreConyugue { set; get; }
    public string ApellidosConyugue { set; get; }
    public string FechaNacimientoConyugue { set; get; }
    public string EdadConyugue { set; get; }
    public string ProfesionConyugue { set; get; }
    public string NumeroPasaporte { set; get; }
    public string FechaVencimientoPasaporte { set; get; }
    public string VisaVigente { set; get; }
    public string NoLlamarCliente { set; get; }
    public string MedioContactoDelCliente { set; get; }
    public string DetalleSeguimiento { set; get; }
    public string FechaProximaLlamada { set; get; }

    
    




	public EntidadCliente() { }

    public EntidadCliente(int pCodigo, string pPrimerNombreCliente, string pSegundoNombreCliente, string pPrimerApellidoCliente, string pSegundoApellidoCliente,
       string pTipoIdentificacion, string pTelefono, string pCelular, string pEmail, string pClasificacion, string pFechaNacimiento,
        string pIdentificacion, int pEdad, string pGenero, string pEstadoCivil, string pNacionalidad, string pDireccionResidencia,
        string pCiudad, string pActividadActual, string pTipoCliente, string pAsesorAsignado, string pNombreConyugue,
        string pApellidosConyugue, string pFechaNacimientoConyugue, string pEdadConyugue, string pProfesionConyugue,
        string pNumeroPasaporte, string pFechaVencimientoPasaporte, string pVisaVigente, string pNoLlamarCliente, string pMedioContactoDelCliente,
        string pDetalleSeguimiento, string pFechaProximaLlamada )
    {
        Codigo = pCodigo;
        PrimerApellidoCliente = pPrimerNombreCliente;
        SegundoNombreCliente = pSegundoNombreCliente;
        PrimerApellidoCliente = pPrimerApellidoCliente;
        SegundoApellidoCliente = pSegundoApellidoCliente;
        TipoIdentificacion = pTipoIdentificacion;
        Telefono = pTelefono;
        Celular = pCelular;
        Email = pEmail;
        Clasificacion = pClasificacion;
        FechaNacimiento = pFechaNacimiento;
        Identificacion = pIdentificacion;
        Edad = pEdad;
        Genero = pGenero;
        EstadoCivil = pEstadoCivil;
        Nacionalidad = pNacionalidad;
        DireccionResidencia = pDireccionResidencia;
        Ciudad = pCiudad;
        ActividadActual = pActividadActual;
        TipoCliente = pTipoCliente;
        AsesorAsignado = pAsesorAsignado;
        NombreConyugue = pNombreConyugue;
        ApellidosConyugue = pApellidosConyugue;
        FechaNacimientoConyugue = pFechaNacimientoConyugue;
        EdadConyugue = pEdadConyugue;
        ProfesionConyugue = pProfesionConyugue;
        NumeroPasaporte = pNumeroPasaporte;
        FechaVencimientoPasaporte = pFechaVencimientoPasaporte;
        VisaVigente = pVisaVigente;
        NoLlamarCliente = pNoLlamarCliente;
        MedioContactoDelCliente = pMedioContactoDelCliente;
        DetalleSeguimiento = pDetalleSeguimiento;
        FechaProximaLlamada = pFechaProximaLlamada;




    }
}