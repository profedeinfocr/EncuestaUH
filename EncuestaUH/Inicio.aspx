<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="EncuestaUH.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #003399;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <span class="auto-style2"><strong>PRUEBA DE INTELIGENCIA</strong></span><br />
            <br />
            <br />
            cedula:<asp:TextBox ID="Tcedula" runat="server"></asp:TextBox>
            <br />
            <br />
            nombre:<asp:TextBox ID="Tnombre" runat="server"></asp:TextBox>
            <br />
            <br />
            genero:<asp:RadioButton ID="rm" Text="Masculino" runat="server" /><asp:RadioButton ID="rf" Text="Femenino" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="bsiguiente" runat="server" Text="Iniciar Prueba" OnClick="bsiguiente_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BReporte" runat="server" Text="Mostrar Reporte" OnClick="BReporte_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <br />
            </div>
    </form>
</body>
</html>
