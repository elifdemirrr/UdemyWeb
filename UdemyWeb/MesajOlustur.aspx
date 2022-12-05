<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="UdemyWeb.MesajOlustur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="txtGonderen" runat="server">Gönderen</asp:Label>

             <asp:TextBox ID="txtGonderen" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtAlıcı" runat="server">Alıcı</asp:Label>
            <asp:TextBox ID="txtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           <div class="form-group">
            <asp:Label for="txtMesajBaslik" runat="server">Mesaj Başlık</asp:Label>
            <asp:TextBox ID="txtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="txtMesajIcerik" runat="server">Mesaj İçerik</asp:Label>

            <textarea id="txtMesajIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
     <asp:Button ID="btnGonder" runat="server" CssClass="btn btn-info" Text="Mesaj Gönder" OnClick="btnGonder_Click"/>
    </form>





</asp:Content>
