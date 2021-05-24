<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciDefault.aspx.cs" Inherits="AspNetBootstrap.OgrenciDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                
                <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" Enabled="False">Numara: </asp:TextBox>
            </div>
            <br />

            <div>
                
                <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>
            </div>
            <br />

               <div>
                
                <asp:TextBox ID="Textbox3" runat="server" CssClass="form-control" Enabled="False">Mail Adresi</asp:TextBox>
            </div>
            <br />
              
 
                 <div>
                
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Telefon</asp:TextBox>
            </div>

            <br />
                 <div>
                
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False">Şifre</asp:TextBox>
            </div>

            <br />
                 <div>
                
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Enabled="False">Cinsiyet</asp:TextBox>
            </div>

            <br />
               <div>
                
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">Fotoğraf</asp:TextBox>
            </div>

 

        </div>
                <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-info" OnClick="Button1_Click"  />


    </form>




</asp:Content>
