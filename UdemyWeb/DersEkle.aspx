<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="UdemyWeb.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="Form1" runat="server">
        
        <div class="form-group">
            <asp:Label for="txtDers" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="txtDers" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
      
     <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Oluştur" OnClick="btnDersOlustur_Click"/>
    </form>
</asp:Content>
