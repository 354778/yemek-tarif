<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: 36pt;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: xx-small;
        }
        .auto-style7 {
            height: 2px;
        }
        .auto-style8 {
            height: 22px;
            background-color: #66FFFF;
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: right;
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>    <asp:Label ID="Label3" runat="server" CssClass="auto-style4"  Text="Label" Font-Size="40pt"></asp:Label>
    </strong>
    <asp:DataList ID="DataList3" runat="server" Width="446px" Height="425px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td style="border: thin double #000000">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border: thin double #000000">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumiçerik") %>'></asp:Label>
                        &nbsp;-<asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div class="auto-style8"> <strong>Yorum Yapma Paneli </strong> </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Ad Soyad:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Yorumunuz:</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server"  Text="Yorum Yap" Height="33px" OffClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>

