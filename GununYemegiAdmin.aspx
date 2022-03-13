<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            background-color: #FFFF99;
        }
        .auto-style9 {
            width: 45px;
        }
        .auto-style10 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px"  />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px"  />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="443px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href='YemekDüzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/45a95853c281d5fd287c1de3a0d55f77.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

