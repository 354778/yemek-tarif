<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
        .auto-style5 {
            height: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList2" runat="server" style="margin-left: 0px; margin-right: 0px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td style="font-size: xx-large; font-weight: 700; text-align: center;">
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center" class="auto-style5">
                        <asp:Image ID="Image2" runat="server" Height="148px" Width="291px" ImageUrl="~/Resimler/Fırında makarna resmi.jfif" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;<table class="auto-style4">
                            <tr>
                                <td><strong>Puan:</strong>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;</td>
                                <td style="text-align: right"><strong>Eklenme Tarihi:</strong>&nbsp;<asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="text-align: right">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>


