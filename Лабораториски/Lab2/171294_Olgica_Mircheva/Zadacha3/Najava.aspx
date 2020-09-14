<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="lab2._3.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-2 text-right">Корисник</div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4"></div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">Лозинка</div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtLozinka" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4"></div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right"></div>
            <div class="col-xs-6">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="submit" />
            </div>
            <div class="col-xs-4"></div>
        </div>
        <hr />
        <div class="row">
            <div class="col-xs-2 text-right"></div>
            <div class="col-xs-6">
                <asp:Label ID="lblObidi" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-xs-4"></div>
        </div>
    </div>
</asp:Content>
