<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            background-color: #FFFF99;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 257px;
        }
        .auto-style6 {
            text-align: right;
            width: 91px;
        }
        .auto-style7 {
            font-size: large;
        }
        .auto-style9 {
            width: 45px;
        }
        .auto-style10 {
            background-color: #FFFF66;
        }
        .auto-style11 {
            font-size: 12pt;
        }
        .auto-style12 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                          <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/delete.png" Width="30px" /> </a>
                        </td>
                        <td class="auto-style4">
                            <a href="KategoriDüzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="30px"/></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style10" style="margin-top:15px" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button4" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_ekle" runat="server" CssClass="auto-style11" Text="Ekle" Width="100px" OnClick="btn_ekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

