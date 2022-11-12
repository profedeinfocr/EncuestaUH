<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R3.aspx.cs" Inherits="EncuestaUH.R3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 497px;
            height: 379px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Pregunta 3
            <br />
            <br />
            <img alt="" class="auto-style1" src="Imagenes/Pregunta3.jpg" /><br />
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
            <asp:Button ID="Salvar" runat="server" Text="Salvar" OnClick="Salvar_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />
            <br />
            <asp:Button ID="biniciar" runat="server" Text="Nueva Encuesta" OnClick="biniciar_Click" />
            <br />
        </div>
    </form>
</body>
</html>
