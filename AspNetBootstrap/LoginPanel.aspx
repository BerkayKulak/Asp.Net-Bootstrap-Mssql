<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="AspNetBootstrap.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</head>
<body style ="background-image:url(student2.jpg);background-repeat:no-repeat;background-position:center;background-size:cover ">
    <form id="form1" runat="server"  > 
        <div class="form-group" style="width:700px; margin:auto" >
            <h2 class="text-center">Web Öğrenci Sınav Not Sistemi Giriş Ekranı</h2>
            <br />
            <br />
            <br />
            <div style="margin:auto" class="text-center">
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/avatar.jpg" />
                </div>
            <br />
            <br />
             <div>
                <asp:Label for="TxtNumara" runat="server" ForeColor="Red">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="auto-style1" Height="51px" Width="700px"></asp:TextBox>
            </div>
            <br />
             <div>
                <asp:Label  for="TxtSifre" runat="server" ForeColor="Red">Şifre</asp:Label>
                <asp:TextBox TextMode="Password"  ID="TxtSifre" runat="server" CssClass="auto-style1" Height="51px" Width="700px"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width ="700px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Öğretmen Gİrişi" CssClass="btn btn-primary" Width ="230px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-danger" Width ="230px" />
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width ="230px" />
        </div>
    </form>
</body>
</html>
