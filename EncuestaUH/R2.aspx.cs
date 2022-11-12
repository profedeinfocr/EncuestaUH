using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class R2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Persona.r2 = DropDownList.

        protected void biniciar_Click(object sender, EventArgs e)
        {
            Persona.r2 = DropDownList1.SelectedValue;
            if (Persona.r2 == "b")
            {
                Persona.puntosR2 = 32;
            }
            

            Response.Redirect("R3.aspx");
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Persona.r2 == "b")
            {
                Persona.puntosR2 = 32;
            }
        }
    }
}