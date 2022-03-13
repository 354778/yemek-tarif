<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDüzenle.aspx.cs" Inherits="YemekDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 40px;
        }
        .auto-style4 {
            text-align: left;
            margin-left: 40px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            font-weight: bold;
            font-size: medium;
            background-color: #FF0000;
        }
        .auto-style7 {
            font-size: medium;
            background-color: #FFFF66;
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
            <td class="auto-style5"><strong>YemekAd:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif:</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Kategori:</strong></td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="Güncelle" Width="100px" OnClick="Button1_Click" Height="40px" />
                &nbsp;</strong><asp:Button ID="Button2" runat="server" CssClass="auto-style7" Height="40px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="176px" />
            </td>
        </tr>
    </table>
</asp:Content>

