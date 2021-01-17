<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminGiris.aspx.cs" Inherits="urun_kayit.adminGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <div style="margin:auto">

           <p>
        <asp:TextBox ID="txtKullanici" runat="server" placeholder="Kullanıcı Adınızı Giriniz"></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="txtSifre" runat="server" placeholder="Şifrenizi Giriniz"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDurum" runat="server"></asp:Label>
    </p>
    </div>


 
    <p>
    </p>
    <p>
    </p>





</asp:Content>
