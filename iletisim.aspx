<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            margin-left: 40px;
            text-align: left;
        }
        .auto-style7 {
            text-align: left;
        height: 31px;
    }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 26px;
            font-size: large;
            text-align: center;
        }
    .auto-style10 {
        text-align: right;
        height: 31px;
    }
        .auto-style11 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-bottom: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9" colspan="2"><strong>MESAJ PLANI</strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Ad Soyad:</td>
            <td class="auto-style7">
                <asp:TextBox ID="Txtgonderen" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Mail:</td>
            <td class="auto-style6">
                <asp:TextBox ID="Txtmail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Konu:</td>
            <td class="auto-style6">
                <asp:TextBox ID="Txtkonu" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Mesaj:</td>
            <td class="auto-style6">
                <asp:TextBox ID="Txtmesaj" runat="server" CssClass="auto-style11" Height="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  Text="Gönder" CssClass="fb8" Width="189px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

