<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        <strong>
        HAKKIMIZDA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Resimler/yemek_hakkimizda.jpg" Width="449px" />

</asp:Content>
