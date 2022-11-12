<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R2.aspx.cs" Inherits="EncuestaUH.R2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 485px;
            height: 381px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Pregunta 2
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem> a </asp:ListItem>
                <asp:ListItem> b </asp:ListItem>
                <asp:ListItem> c </asp:ListItem>
                <asp:ListItem> d </asp:ListItem>
                <asp:ListItem> e </asp:ListItem>
                <asp:ListItem> f </asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <img alt="" class="auto-style1" src="Imagenes/Pregunta2.jpg" /><br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <asp:Button ID="Bsiguiente" runat="server" Text="Siguiente" OnClick="biniciar_Click" />
            <br />
        </div>
    </form>
</body>
</html>
