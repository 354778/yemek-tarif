<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Mesaj Gonderen:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Baslik:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail Adresi:</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mesaj icerik:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

