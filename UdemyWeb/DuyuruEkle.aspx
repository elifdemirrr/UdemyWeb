<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="UdemyWeb.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <asp:Label for="DropDownList1" runat="server">Duyuru Öğretmen</asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label for="txtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
            <asp:TextBox ID="txtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>

            <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
     <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Oluştur" OnClick="Button1_Click"/>
    </form>
</asp:Content>
