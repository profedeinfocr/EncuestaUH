<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R1.aspx.cs" Inherits="EncuestaUH.R1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 499px;
            height: 396px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Pregunta 1
            <br />
            <br />
            <img alt="" class="auto-style1" src="Imagenes/Pregunta1.jpg" /><br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>a</asp:ListItem>
                <asp:ListItem>b</asp:ListItem>
                <asp:ListItem>c</asp:ListItem>
                <asp:ListItem>d</asp:ListItem>
                <asp:ListItem>e</asp:ListItem>
                <asp:ListItem>f</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <asp:Button ID="Continuar" runat="server" Text="Siguiente" OnClick="Continuar_Click" style="height: 35px" />




        </div>
    </form>
</body>
</html>
