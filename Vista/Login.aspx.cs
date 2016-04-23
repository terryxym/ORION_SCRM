using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;



public partial class Vista_Login : System.Web.UI.Page
{
    //protected void Page_Load(object sender, EventArgs e)
    //{
    //      InitializeComponent();
    //}

    Encriptamiento encri = new Encriptamiento();

    int veces = 0;
    private const int intentos = 2;

    protected void BtnIngresar_Click(object sender, EventArgs e)
    {
        if (this.DdlTipo.Text == "SELECCIONAR")
        {
            Response.Write("Seleccione Tipo de Usuario");
            //"Mensaje de Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return;
        }

        EntidadUsuario log = new EntidadUsuario();
        log.Usuario = TxtUsuario.Text;
        //log.Clave = TxtPassword.Text;
        log.Clave = encri.EncryptKey(TxtPassword.Text);
        log.Tipo = DdlTipo.Text;

        if (TxtUsuario.Text == "")
        {
            Response.Write("Digite Usuario para Continuar");
            //"CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            TxtUsuario.Focus();
        }
        else if (TxtPassword.Text == "")
        {
            Response.Write("Digite Clave para Continuar");
            //, "CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            DdlTipo.Focus();
        }
        else if (log.Verificar() == true)
        {
            if (DdlTipo.Text == "INVITADO")
            {
                Response.Redirect("Menu.aspx");
                //Menu inicia = new Menu();
                //inicia.Res();
                //this.Hide();
                //inicia.toolStripStatusLabel2.Text = "Usuario: " + textBox1.Text + "  *** " + " Cargo: " + comboBox1.Text.ToString();
                //inicia.cONDIFENCIALToolStripMenuItem.Enabled = false;
                //inicia.aGREGARUSUARIOSToolStripMenuItem.Enabled = false;


            }
            else
            {
                Response.Redirect("Menu.aspx");
                //Menu inicia = new Menu();
                //inicia.Show();
                //this.Hide();
                //inicia.toolStripStatusLabel2.Text = "Usuario: " + textBox1.Text + "  *** " + " Cargo: " + comboBox1.Text.ToString();
                //inicia.cONDIFENCIALToolStripMenuItem.Enabled = true;
                //inicia.aGREGARUSUARIOSToolStripMenuItem.Enabled = true;
            }

        }
        else
        {
            if (veces == 2)
            {
                Response.Write(log.Mensaje);
                //MessageBoxButtons.OK, MessageBoxIcon.Error);
                //this.Close();
            }
            else
            {
                Response.Write("<script>window.alert('Su Usuario o Contraseña son erroneos o su Rol NO coincide');</script>");
                //Le Quedan " + (intentos - veces) + " Intento(s)", "CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Error);
                //TxtUsuario.Clear();
                //textBox2.Clear();
                veces = veces + 1;
            }
        }
    }

    //private void comboBox1_KeyPress(object sender, KeyPressEventArgs e)
    //{
    //    e.Handled = true;
    //}

    private void Logueo_Load(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (this.DdlTipo.Text == "SELECCIONAR")
        {
            Response.Write("Seleccione Tipo de Usuario");
            //"Mensaje de Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return;
        }

        EntidadUsuario log = new EntidadUsuario();
        log.Usuario = TxtUsuario.Text;
        //log.Clave = TxtPassword.Text;
        log.Clave = encri.EncryptKey(TxtPassword.Text);
        log.Tipo = DdlTipo.Text;

        if (TxtUsuario.Text == "")
        {
            Response.Write("Digite Usuario para Continuar");
            //"CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            TxtUsuario.Focus();
        }
        else if (TxtPassword.Text == "")
        {
            Response.Write("Digite Clave para Continuar");
            //, "CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            DdlTipo.Focus();
        }
        else if (log.Verificar() == true)
        {
            if (DdlTipo.Text == "INVITADO")
            {


                //Response.Redirect("Menu.aspx");
                //Menu inicia = new Menu();
                //inicia.Res();
                //this.Hide();
                //inicia.toolStripStatusLabel2.Text = "Usuario: " + textBox1.Text + "  *** " + " Cargo: " + comboBox1.Text.ToString();
                //inicia.cONDIFENCIALToolStripMenuItem.Enabled = false;
                //inicia.aGREGARUSUARIOSToolStripMenuItem.Enabled = false;


                HttpCookie cookierol = new HttpCookie("Rol");
                cookierol.Value = DdlTipo.Text;
                Response.Cookies.Add(cookierol);


                HttpCookie cookieuser = new HttpCookie("Usuario");
                cookieuser.Value = TxtUsuario.Text;
                Response.Cookies.Add(cookieuser);

                Response.Redirect("Menu.aspx?parametro=" + TxtUsuario.Text + "  *** " + " Rol: " + DdlTipo.Text);





            }
            else
            {

                //Response.Redirect("Menu.aspx");
                //Menu inicia = new Menu();
                //inicia.Show();
                //this.Hide();
                //inicia.toolStripStatusLabel2.Text = "Usuario: " + textBox1.Text + "  *** " + " Cargo: " + comboBox1.Text.ToString();
                //inicia.cONDIFENCIALToolStripMenuItem.Enabled = true;
                //inicia.aGREGARUSUARIOSToolStripMenuItem.Enabled = true;
                Response.Redirect("Menu.aspx?parametro=" + TxtUsuario.Text + "  *** " + " Rol: " + DdlTipo.Text);

            }

        }
        else
        {
            if (veces == 2)
            {
                Response.Write(log.Mensaje);
                //MessageBoxButtons.OK, MessageBoxIcon.Error);
                //this.Close();
            }
            else
            {
                Response.Write("<script>window.alert('Su Usuario o Contraseña son erroneos o su Rol NO coincide');</script>");
                //Le Quedan " + (intentos - veces) + " Intento(s)", "CompuBinario", MessageBoxButtons.OK, MessageBoxIcon.Error);
                //TxtUsuario.Clear();
                //textBox2.Clear();
                veces = veces + 1;
            }
        }
    }
}
