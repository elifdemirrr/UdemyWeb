<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="UdemyWeb.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="Form1" runat="server">
         <div class="form-group">
            <asp:Label for="txtDersAdı" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="txtDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrId" runat="server">Öğrenci Id</asp:Label>
            <asp:TextBox ID="txtOgrId" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
            <asp:TextBox ID="txtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtSinav1" runat="server">Sınav 1</asp:Label>
            <asp:TextBox ID="txtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtSinav2" runat="server">Sınav 2</asp:Label>
            <asp:TextBox ID="txtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtSinav3" runat="server">Sınav 3</asp:Label>
            <asp:TextBox ID="txtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label for="txtOrtalama" runat="server" >Ortalama</asp:Label>
            <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
          <div class="form-group">
            <asp:Label for="txtDurum" runat="server" >Durum</asp:Label>
            <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-toolbar" Text="Hesapla" OnClick="btnHesapla_Click"/>
         <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Güncelle" OnClick="btnGuncelle_Click"/>
    </form>



</asp:Content>
