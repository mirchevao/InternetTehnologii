<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="WebApplication5.Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />

    <asp:TextBox ID="txtPoraka" runat="server" TextMode="MultiLine" Rows="5" ReadOnly="True" OnTextChanged="proveri"></asp:TextBox>
    <br />
    <br />

    <asp:Button ID="btnProveri" runat="server" Text="Провери" OnClick="proveri" />
    <br />
    <br />

    <asp:Button ID="btnPrvaStrana" runat="server" Text="Назад" Enabled="False" OnClick="nazad" />
    <br />
    <br />

</asp:Content>
