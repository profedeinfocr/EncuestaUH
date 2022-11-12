using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestaUH
{
    public partial class R1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Persona.r1 = DropDownList1.SelectedValue;
            if (Persona.r1 == "f")
            { Persona.puntosR1 = 31; }

            Response.Redirect("r2.aspx");
            

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}