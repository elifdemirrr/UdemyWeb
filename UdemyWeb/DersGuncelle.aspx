<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="UdemyWeb.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="txtDersId" runat="server">Ders ID</asp:Label>
             <asp:TextBox ID="txtDersId" runat="server" CssClass="form-control"></asp:TextBox>
            
        </div>
        <div class="form-group">
            <asp:Label for="txtDersAdi" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="txtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       
     <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Güncelle" OnClick="Button1_Click"/>
    </form>





</asp:Content>
