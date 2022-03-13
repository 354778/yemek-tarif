<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 169px;
        }
        .auto-style6 {
            width: 222px;
            height: 26px;
        }
        .auto-style7 {
            width: 222px;
            background-color: #00FFFF;
            height: 65px;
        }
        .auto-style8 {
            width: 222px;
            background-color: #FFFF66;
            height: 6px;
        }
    .auto-style9 {
        width: 700px;
        height: 69px;
    }
    .auto-style10 {
        width: 700px;
        height: 48px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style11" Height="300px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                 <td class="auto-style7"> <strong>Yemek Adı: 

                    
                       <a href =" YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">  <asp:Label ID="Label3" runat="server" BackColor="#FF6666" BorderColor="Red"
                       Font-Size="X-Large" Font-Underline="True" ForeColor="White" Height="30px" Text='<%# Eval("YemekAd") %>'></asp:Label> </a>
                       

                    </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekmalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("yemektarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        Ekleme Tarifi:<asp:Label ID="Label6" runat="server" Text='<%# Eval("yemektarih") %>' ForeColor="White"></asp:Label>
                        -Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekpuan") %>' ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" rowspan="1"  > </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

