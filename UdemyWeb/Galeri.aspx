<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="UdemyWeb.Galeri" %>

<%@ Register Assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <dx:ASPxImageGallery ID="ASPxImageGallery" runat="server" DataSourceID="SqlDataSource1" ImageUrlField="OgrFotograf"
                     ThumbnailHeight="178px" ThumbnailWidth="178px" ClientInstanceName="ClientImageGallery" EnableTheming="True" Theme="Metropolis" >
    <Paddings Padding="0" />
    <SettingsFolder ImageSourceFolder="~/Content/Images/photo_gallery/" ImageCacheFolder="~/Thumb/ImageGalleryThumb/" />
        <Items>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nCgMHI">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/f/2022/08/22/nCg2u8.png">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nCgpJx">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nChE0P">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nCgvky">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nCg6xS">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="https://imgyukle.com/i/nCg7ct">
            </dx:ImageGalleryItem>
            <dx:ImageGalleryItem ImageUrl="adres">
            </dx:ImageGalleryItem>
        </Items>
    <SettingsTableLayout RowsPerPage="2" />
</dx:ASPxImageGallery>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UdemySiteDBConnectionString %>" 
        SelectCommand="SELECT [OgrFotograf] FROM [TblOgrenci]"></asp:SqlDataSource>


        </form>
</asp:Content>
