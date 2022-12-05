<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="UdemyWeb.OgrenciGuncelle2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="Form1" runat="server">
     
         <div class="form-group">

             <asp:TextBox ID="TextBox1" runat="server" Enabled="True" CssClass="form-control">Numara</asp:TextBox>
        </div>
     <div class="form-group">

             <asp:TextBox ID="TextBox2" runat="server" Enabled="True" CssClass="form-control">Şifre:</asp:TextBox>
        </div>
    
       
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Şifre Değiştir" OnClick="Button1_Click" />
          </form>
</asp:Content>
