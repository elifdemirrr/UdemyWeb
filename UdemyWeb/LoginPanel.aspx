<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWeb.LoginPanel" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <%--  <style>
    .body{
    width: 100%;
    height: 100px;
    background-image: url("Dosyalar1/background/background2.jpg");
    }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 700px; margin: auto;">
            <h2>Udemy Web Öğrenci Sınav Not Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            <div style="margin: auto; text-align: center">
                <dx:ASPxImage ID="ASPxImage1" Height="100px" Width="100px" runat="server" ShowLoadingImage="true" ImageUrl="~/Dosyalar1/pngegg (2).png"></dx:ASPxImage>
            </div>
            <br />
            <br />
            <div class="form-group">
                <asp:Label for="txtUsername" runat="server">Kullanıcı Adı</asp:Label>

                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label for="txtPassword" runat="server">Şifre </asp:Label>

                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />

            <br />
            <br />

            <asp:Button ID="Button2" runat="server" Text="Öğretmen Giriş" CssClass="btn btn-danger" Width="190px" OnClick="Button2_Click" />


            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
           
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />
        </div>
    </form>
</body>
</html>
