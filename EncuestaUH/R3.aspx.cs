using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class R3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select resp.id, pers.nombre, resp.cedulaR, resp.r1, resp.r2, resp.r3 " +
                                                        "from Respuestas0 resp inner join Persona pers on resp.cedulaR = pers.cedulaP"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void salvar()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO Persona (cedulaP, nombre, genero) VALUES('" + Persona.cedula + "', '" +
                    Persona.nombre + "', '" + Persona.genero + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                conexion.Open();
                comando = new SqlCommand(" INSERT INTO Respuestas0 (cedulaR, r1, r2, r3) VALUES('" + Persona.cedula + "','" + Persona.r1 + "', '" +
                    Persona.r2 + "', '" + Persona.r3 + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

            }
            catch (Exception)
            {

            }

            LlenarGrid();

        }



        protected void biniciar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            Persona.r3 = DropDownList1.SelectedValue;
            if (Persona.r3 == "f")
            {
                Persona.puntosR3 = 33;
            }


            Label1.Text = "Cedula: " + Persona.cedula.ToString() + "     Nombre: " + Persona.nombre.ToString() +
                "    Genero: " + Persona.genero.ToString() + "    Respuesta #1: " + Persona.r1 + "    Respuesta #2: " +
                Persona.r2 + "Respuesta #3:" + Persona.r3 + "    Puntaje: " + (Persona.puntosR1 + Persona.puntosR2 + Persona.puntosR3);
            salvar();
            LlenarGrid();
        }
    }
}