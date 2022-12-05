<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UdemyWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NUMARA</th>
                <th scope="col">AD</th>
                <th scope="col">SOYAD</th>
                <th scope="col">TELEFON</th>
                <th scope="col">MAİL</th>
                <th scope="col">ŞİFRE</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>
           
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrId") %></td>
                        <td><%#Eval("OgrNumara") %></td>
                        <td><%#Eval("OgrAd") %></td>
                        <td><%#Eval("OgrSoyad") %></td>
                        <td><%#Eval("OgrTelefon") %></td>
                        <td><%#Eval("OgrMail") %></td>
                        <td><%#Eval("OgrSifre") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OgrId="+Eval("OgrId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
           
        </tbody>
    </table>
</asp:Content>
<%--  <th scope="row">1</th> --%>