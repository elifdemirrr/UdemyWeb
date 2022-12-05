<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="UdemyWeb.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="txtOgrAd" runat="server">ÖğrenciAdı</asp:Label>
            <asp:TextBox ID="txtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrSoyad" runat="server">Öğrenci Soyadı</asp:Label>
            <asp:TextBox ID="txtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrTelefon" runat="server">Öğrenci Telefon</asp:Label>
            <asp:TextBox ID="txtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrMail" runat="server">Öğrenci Mail</asp:Label>
            <asp:TextBox ID="txtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrSifre" runat="server">Öğrenci Sifre</asp:Label>
            <asp:TextBox ID="txtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOgrFoto" runat="server" >Öğrenci Foto Link</asp:Label>
            <asp:TextBox ID="txtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Kydet" OnClick="Button1_Click" />
    </form>
</asp:Content>
