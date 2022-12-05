<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="UdemyWeb.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
                <th scope="col">DERS ID</th>
                <th scope="col">DERS ADI</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DersId") %></td>
                        <td><%#Eval("DersAd") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DersSil.aspx?DersId="+Eval("DersId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DersGuncelle.aspx?DersId="+Eval("DersId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:HyperLink ID="HyperLink3" NavigateUrl="~/DersEkle.aspx" runat="server" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
        </tbody>
    </table>
</asp:Content>
