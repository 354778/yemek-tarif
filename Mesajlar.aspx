<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style3 {
            background-color: #FFFF99;
        }
        .auto-style9 {
            width: 45px;
        }
        .auto-style11 {
        background-color: #00FFFF;
    }
    .auto-style12 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3">
   <asp:DataList ID="DataList1" runat="server" Width="450px" CssClass="auto-style11">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ikonlar/edit-1.png" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
         </asp:Panel>
    </asp:Content>

