<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="UdemyWeb.GelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">GÖNDEREN</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARİH</th>
                <th scope="col">İŞLEMLER</th>
            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MesajId") %></td>
                        <td><%#Eval("Gonderen") %></td>
                        <td><%#Eval("Baslik") %></td>
                        <td><%#Eval("Icerik") %></td>
                        <td><%#Eval("Tarih") %></td>
                       <%-- <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DuyuruSil.aspx?DuyuruId="+Eval("DuyuruId")%>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DuyuruId="+Eval("DuyuruId")%>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                        </td>--%>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
