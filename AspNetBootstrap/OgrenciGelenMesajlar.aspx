<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGelenMesajlar.aspx.cs" Inherits="AspNetBootstrap.OgrenciGelenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    
    <table class="table table-bordered table-hover">

        <tr>
            
            <th scope="col">GÖNDEREN</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">İÇERİK</th>

            <th scope="col">TARİH</th>


        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <Itemtemplate>
                    <tr>
                      
                        <td><%#Eval("GÖNDEREN")%></td>
                        <td><%#Eval("BASLIK")%></td>
                        <td><%#Eval("ICERİK")%></td>
                        <td><%#Eval("TARIH")%></td>
                    </tr>

                </Itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>
