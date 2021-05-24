<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="AspNetBootstrap.GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">GÖNDEREN</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>

      


        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <Itemtemplate>
                    <tr>
                        <td><%#Eval("MESAJID")%></td>
                        <td><%#Eval("GONDEREN")%></td>
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERİK")%></td>

                       <%-- <td
                            <asp:hyperlink navigateurl='<%# "duyurusil.aspx?duyuruıd="+Eval("duyuruıd")%>' ıd="hyperlink1" runat="server" cssclass="btn btn-danger">sil</asp:hyperlink>
                            <asp:hyperlink navigateurl='<%# "duyuruguncelle.aspx?duyuruıd="+Eval("duyuruıd")%>' ıd="hyperlink2" runat="server" cssclass="btn btn-success">güncelle</asp:hyperlink>
                        </td>--%>
                    </tr>

                </Itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
