<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ValidationZadaca.aspx.cs" Inherits="WebApplication5.ValidationZadaca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-2 text-right">
                Име
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator1" 
                    runat="server" 
                    ControlToValidate="txtIme"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Презиме
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator2" 
                    runat="server" 
                    ControlToValidate="txtPrezime"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                ФИНКИ ID
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator3" 
                    runat="server" 
                    ControlToValidate="txtId"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator 
                   class="text-danger"
                    ID="RegularExpressionValidator2" 
                    runat="server"
                    ControlToValidate="txtId"
                    ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                    ErrorMessage="You have entered an invalid expression!"></asp:RegularExpressionValidator>
            </div>

        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Лозинка
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RegularExpressionValidator 
                   class="text-danger"
                    ID="passVal" 
                    runat="server"
                    ControlToValidate="txtLozinka"
                    ValidationExpression=".{8,}"
                    ErrorMessage="You have entered an invalid expression!"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator5" 
                    runat="server" 
                    ControlToValidate="txtLozinka"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
                
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Потврди
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtPotvrdi" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:CompareValidator 
                    class="text-danger"
                    Operator="Equal"
                    ControlToValidate="txtPotvrdi"
                    ControlToCompare="txtLozinka"
                    ID="CompareValidator1" 
                    runat="server" 
                    ErrorMessage="CompareValidator"></asp:CompareValidator>
                 <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator6" 
                    runat="server" 
                    ControlToValidate="txtPotvrdi"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Адреса
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator7" 
                    runat="server" 
                    ControlToValidate="txtAdresa"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Тел
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtTel" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4 text-left">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator8" 
                    runat="server" 
                    ControlToValidate="txtTel"
                    ErrorMessage="This feild is required! "></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="RegularExpressionValidator1" 
                    runat="server" 
                    ControlToValidate="txtTel"
                    ValidationExpression="[0-9]{10}"
                    ErrorMessage="The expression you have entered is not valid!"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Пол
            </div>
            <div class="col-xs-6">
                <asp:RadioButtonList ID="rblPol" runat="server">
                    <asp:ListItem>Машко</asp:ListItem>
                    <asp:ListItem>Женско</asp:ListItem>
                </asp:RadioButtonList>
            </div>
                <div class="col-xs-4 text-left">
                    <asp:RequiredFieldValidator 
                        class="text-danger"
                        ID="RequiredFieldValidator9" 
                        runat="server" 
                        ControlToValidate="rblPol"
                        ErrorMessage="This feild is required!"></asp:RequiredFieldValidator>
                </div>
        </div>

        <div class="row">
            <div class="col-xs-2 text-right">
                Датум на раѓање
            </div>
            <div class="col-xs-6">
                <asp:Calendar ID="calendar" runat="server"></asp:Calendar>
            </div>
            <div class="col-xs-4 text-left">
              
                </div>
            </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Занимање
            </div>
            <div class="col-xs-6">
                <asp:DropDownList ID="ddlZanimanje" runat="server">
                    <asp:ListItem>(професија)</asp:ListItem>
                    <asp:ListItem>Програмер</asp:ListItem>
                    <asp:ListItem>Доктор</asp:ListItem>
                    <asp:ListItem>Професор</asp:ListItem>
                    <asp:ListItem>Електро-инженер</asp:ListItem>
                    <asp:ListItem>Градежник</asp:ListItem>
                    <asp:ListItem>Економист</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-4">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator4" 
                    runat="server" 
                    InitialValue="(професија)"
                    ControlToValidate="ddlZanimanje"
                    ErrorMessage="This feild is required!"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Години на вршење на таа дејност
            </div>
            <div class="col-xs-6">
                <asp:TextBox ID="txtGodini" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-4">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="RequiredFieldValidator11" 
                    runat="server" 
                    ControlToValidate="txtGodini"
                    ErrorMessage="This feild is required!"></asp:RequiredFieldValidator>

            </div>
        </div>
        <hr />
        
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-6">
                <asp:Button ID="btnSubmit" runat="server" Text="Поднеси" OnClick="submit_click" />
            </div>
            <div class="col-xs-4">
                <asp:Label ID="msg" runat="server" Text=""></asp:Label>
            </div>
        </div>
        </div>
    
</asp:Content>
