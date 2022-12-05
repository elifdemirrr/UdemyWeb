<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="UdemyWeb.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v22.1, Version=22.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
     <table class="table table-bordered table-hover">
        <tr>
            <td>
                <asp:Chart ID="Chart1" runat="server" Width="500px">
                    <series>
                        <asp:Series Name="Kitap">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
            <td>
                <asp:Chart ID="Chart2" runat="server" Width="500px">
                    <series>
                        <asp:Series Name="DersAd" ChartType="Area">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Chart ID="Chart3" runat="server" Width="500px">
                    <Series>
                        <asp:Series ChartType="Pie" Name="Dersler">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Chart ID="Chart4" runat="server" Width="500px">
                    <Series>
                        <asp:Series ChartType="Doughnut" Name="Cinsiyet" YValuesPerPoint="4">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
