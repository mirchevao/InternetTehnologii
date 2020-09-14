<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="zad1.aspx.cs" Inherits="Lab2.zad1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="row">
            <div class="col-xs-2 text-right">
                Име
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6 text-left">
                Почитуван патнику
                <br />
                <asp:Label ID="lblPatnik" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Презиме
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-6 text-left">
                Издадена ви е карта за
                <br />
                <asp:Label ID="lblSredstvo" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Од
            </div>
            <div class="col-xs-4">
                <asp:DropDownList ID="ddlOd" runat="server" AutoPostBack="True">
                    <asp:ListItem>(city)</asp:ListItem>
                    <asp:ListItem>Skopje</asp:ListItem>
                    <asp:ListItem>Veles</asp:ListItem>
                    <asp:ListItem>Negotino</asp:ListItem>
                    <asp:ListItem>Struga</asp:ListItem>
                    <asp:ListItem>Belgrade</asp:ListItem>
                    <asp:ListItem>Athens</asp:ListItem>
                    <asp:ListItem>Budapest</asp:ListItem>
                    <asp:ListItem>Vienna</asp:ListItem>
                    <asp:ListItem>Amsterdam</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>Salt Lake City </asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-6 text-left">
                со почетна дестинација
                <br />
                <asp:Label ID="lblOd" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                До
            </div>
            <div class="col-xs-4">
                <asp:DropDownList ID="ddlDo" runat="server">
                    <asp:ListItem>(city)</asp:ListItem>
                    <asp:ListItem>Skopje</asp:ListItem>
                    <asp:ListItem>Veles</asp:ListItem>
                    <asp:ListItem>Negotino</asp:ListItem>
                    <asp:ListItem>Struga</asp:ListItem>
                    <asp:ListItem>Belgrade</asp:ListItem>
                    <asp:ListItem>Athens</asp:ListItem>
                    <asp:ListItem>Budapest</asp:ListItem>
                    <asp:ListItem>Vienna</asp:ListItem>
                    <asp:ListItem>Amsterdam</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>Salt Lake City </asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-6 text-left">
                и крајна дестинација
                <br />
                <asp:Label ID="lblDo" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Датум на тргање
            </div>
            <div class="col-xs-4">
                <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
                <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
            </div>
            <div class="col-xs-6 text-left">
                Времето на поаѓање е
                <br />
                <asp:Label ID="lblVreme" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Време на тргање
            </div>
            <div class="col-xs-4">
                <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
            </div>
            <div class="col-xs-6 text-left">
                <br />
                Вашето место на седење ќе биде во зоната
                <br />
                за 
                <asp:Label ID="lblZona" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Превозно средство
            </div>
            <div class="col-xs-4">
                <asp:ListBox ID="lstSredstvo" runat="server">
                    <asp:ListItem Value="plane.jpg">Авион</asp:ListItem>
                    <asp:ListItem Value="train.jpg">Воз</asp:ListItem>
                </asp:ListBox>
            </div>
            <div class="col-xs-6 text-left">
                во 
                <asp:Label ID="lblKlasa" runat="server" Text=""></asp:Label>
                класа и во текот на патувањето ќе бидете послужени со
                <asp:Label ID="lblPosluga" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Зона
            </div>
            <div class="col-xs-4">
                <asp:RadioButtonList ID="rblZona" runat="server">
                    <asp:ListItem>Пушачи</asp:ListItem>
                    <asp:ListItem>Непушачи</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-xs-6 text-left">
                <asp:Image ID="imgSlika" Width="200px" Height="200px" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Класа
            </div>
            <div class="col-xs-4">
                <asp:RadioButtonList ID="rblKlasa" runat="server">
                    <asp:ListItem>Економска</asp:ListItem>
                    <asp:ListItem>Бизнис</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-xs-6 text-left">
               
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2 text-right">
                Послуга
            </div>
            <div class="col-xs-4">
            <asp:CheckBoxList ID="cblPosluga" runat="server">
                <asp:ListItem>Пијалок</asp:ListItem>
                <asp:ListItem>Кафе</asp:ListItem>
                <asp:ListItem>Оброк</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div class="col-xs-6">
                 Ви благодариме на довербата и ви посакуваме среќен пат!
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-4">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="Podnesi_onClick" />
            </div>
            <div class="col-xs-6">
                <br />
            </div>
        </div>
    </div>
</asp:Content>
