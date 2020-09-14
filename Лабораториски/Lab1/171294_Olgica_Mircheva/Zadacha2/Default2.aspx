<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="WebApplication5.Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Panel ID="pnPanela1" runat="server" BackColor="#66FFCC" Font-Names="Arial Narrow" Height="213px">
                   <br />
                    <br />
                    <asp:TextBox ID="txtOperand1" runat="server" EnableViewState="False"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtOperand2"  runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnSoberi" runat="server" Text="Собери" OnClick="Soberi_onClick" />
                    <br />
                    <br />
                    <asp:Label ID="lblRezultat" runat="server" EnableViewState="False"></asp:Label>
                    <br />
                   
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="height: 182px">
                <asp:CheckBox ID="chbVidlivo" runat="server" AutoPostBack="True" OnCheckedChanged="chbVidlivo_CheckedChanged" Text="Видливо" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default3.aspx">Следно</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
