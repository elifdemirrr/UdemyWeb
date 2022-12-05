<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="UdemyWeb.OgrenciDefault" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="Form1" runat="server">
     
            <div class="form-group">

             <asp:TextBox ID="TextBox7" runat="server" Enabled="false" CssClass="form-control">Fotograf: </asp:TextBox>
        </div>
       
          <div class="form-group">

             <asp:TextBox ID="TextBox1" runat="server" Enabled="false" CssClass="form-control">Ad Soyad:</asp:TextBox>
        </div>
       
          <div class="form-group">

             <asp:TextBox ID="TextBox2" runat="server" Enabled="false" CssClass="form-control">Mail:</asp:TextBox>
        </div>
        
         <div class="form-group">

             <asp:TextBox ID="TextBox4" runat="server" Enabled="false" CssClass="form-control">Telefon:</asp:TextBox>
        </div>
         <div class="form-group">

             <asp:TextBox ID="TextBox5" runat="server" Enabled="false" CssClass="form-control">Şifre:</asp:TextBox>
        </div>
         <div class="form-group">

             <asp:TextBox ID="TextBox6" runat="server" Enabled="false" CssClass="form-control">Cinsiyet:</asp:TextBox>
        </div>
      <div class="form-group">

             <asp:TextBox ID="TextBox3" runat="server" Enabled="false" CssClass="form-control">Fotograf: </asp:TextBox>
        </div>
 
       
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-toolbar" Text="Güncelle" OnClick="Button1_Click" />
          </form>



</asp:Content>
