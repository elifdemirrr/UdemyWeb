<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesajlar.aspx.cs" Inherits="UdemyWeb.OgrenciGelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
        
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
                 
                        <td><%#Eval("Gonderen") %></td>
                        <td><%#Eval("Baslik") %></td>
                        <td><%#Eval("Icerik") %></td>
                        <td><%#Eval("Tarih") %></td>
                     
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>






</asp:Content>
