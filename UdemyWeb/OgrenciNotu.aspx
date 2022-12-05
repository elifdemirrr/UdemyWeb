﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotu.aspx.cs" Inherits="UdemyWeb.OgrenciNotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
              
                <th scope="col">ÖĞRENCİ ID</th>
                <th scope="col">AD SOYAD</th>
                <th scope="col">DERS ADI</th>
                <th scope="col">SINAV 1</th>
                <th scope="col">SINAV 2</th>
                <th scope="col">SINAV 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
     
            </tr>
        </thead>
        <tbody>
           
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrenciiId") %></td>
                        <td><%#Eval("OGRENCIADSOYAD") %></td>
                        <td><%#Eval("DersAd") %></td>
                        <td><%#Eval("Sınav1") %></td>
                        <td><%#Eval("Sınav2") %></td>
                        <td><%#Eval("Sınav3") %></td>
                        <td><%#Eval("Ortalama") %></td>
                        <td><%#Eval("Durum") %></td>
                    
                   
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
           
        </tbody>
    </table>



</asp:Content>
