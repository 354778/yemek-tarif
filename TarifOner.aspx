<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
    <style type="text/css">
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        height: 33px;
    }
    .auto-style8 {
        text-align: right;
        height: 29px;
    }
    .auto-style9 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Yapılış:</td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td>
            <asp:FileUpload ID="Resim" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarifin Sahibi:</td>
        <td>
            <asp:TextBox ID="TarifinSahibi" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail:</td>
        <td class="auto-style9">
            <asp:TextBox ID="Mail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6"><strong>
            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" BorderColor="#0066FF" CssClass="fb8" Text="Tarif Öner" Height="40px" Width="217px"  />
            </strong></td>
    </tr>
</table>
</asp:Content>

