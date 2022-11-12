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
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bsiguiente_Click(object sender, EventArgs e)
        {
            Persona.cedula = Tcedula.Text;
            Persona.nombre = Tnombre.Text;
            
            if (rf.Checked)
            {
                Persona.genero = "F";
            }
            else
                Persona.genero = "M";
            
            Response.Redirect("R1.aspx");
        }

        protected void rf_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BReporte_Click(object sender, EventArgs e)
        {
            
            {
                string constr = ConfigurationManager.ConnectionStrings["EncuestasUHConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("select resp.id, pers.nombre, pers.genero, resp.cedulaR, resp.r1, resp.r2, resp.r3 " +
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

        }
    }
}