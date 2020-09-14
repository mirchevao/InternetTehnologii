<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zad2.1.aspx.cs" Inherits="Lab2.zad2__1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="content">
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <asp:TextBox ID="txt" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="RegularExpressionValidator1" 
                    runat="server" 
                    ControlToValidate="txt"
                    ValidationExpression="\w+"
                    ErrorMessage="The expression is not valid!"></asp:RegularExpressionValidator>
            </div>
        </div>
        
    </div>
</asp:Content>
