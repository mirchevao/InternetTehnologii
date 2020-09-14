<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zad2.1.aspx.cs" Inherits="lab22.zad2__1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="row">
            <div class="col-xs-4 text-right">Барање 1</div>
            <div class="col-xs-4">
                <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="RegularExpressionValidator1" 
                    runat="server" 
                    ControlToValidate="txt1"
                    ValidationExpression="\w+\d{2,}"
                    ErrorMessage="The expression you have entered is not valid!"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">Барање 2</div>
            <div class="col-xs-4">
                <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator2" 
                    class="text-danger"
                    ControlToValidate="txt2"
                    ValidationExpression="^(\+?[0-9]{2,}[- ]?[0-9]{2,})$"
                    runat="server" 
                    ErrorMessage="The expression you have entered is not valid!"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
</asp:Content>
