<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="AspNetBootstrap.Galeri" %>
<%@ Register assembly="DevExpress.Web.v20.2, Version=20.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
            ConnectionStrings:UdemySiteDBConnectionString %>" 
            SelectCommand="SELECT [OGRFOTOGRAF] FROM [TBL_OGRENCI]"></asp:SqlDataSource>
    <dx:ASPxImageGallery ID="ASPxImageGallery1" runat="server" 
        DataSourceID ="SqlDataSource1" ImageUrlField ="OGRFOTOGRAF" CssClass="auto-style1" Height="1000px" Theme="BlackGlass" ThumbnailHeight="300px" ThumbnailWidth="350px" Width="1650px">
        <SettingsFolder ImageCacheFolder="~/Thumb/" />
    </dx:ASPxImageGallery>


</form>

</asp:Content>
