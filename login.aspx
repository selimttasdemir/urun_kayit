<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="urun_kayit.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <table style="margin-left: 50px; padding-bottom: 100px; height: 200px; width: 100%;">
        <tr>
            <td style="padding-right: 0px; height: 100px; width: 619px;">
                <div style="margin: auto">

                    <p>
        <asp:Label ID="lblGirisDurum0" runat="server">GİRİŞ YAP</asp:Label>
                    </p>
                    <p>
                        <asp:TextBox ID="txtKullanici" runat="server" placeholder="Kullanıcı Adınızı Giriniz" Width="130px"></asp:TextBox>
                    </p>
                    <p style="width: 160px">
                        <asp:TextBox ID="txtSifre" runat="server" placeholder="Şifrenizi Giriniz" Width="130px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblGirisDurum" runat="server"></asp:Label>
                    </p>
                </div>

            </td>
            <td style="height: 100px">
                <div style="margin: auto">

                    <p>
        <asp:Label ID="lblGirisDurum1" runat="server">KAYIT OL</asp:Label>
                    </p>
                    <p>
                        <asp:TextBox ID="txtKayitAd" runat="server" placeholder="Kullanıcı Adınızı Giriniz" Width="130px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:TextBox ID="txtKayitSifre" runat="server" placeholder="Şifrenizi Giriniz" Width="130px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Button ID="btnKayit" runat="server" Text="Kayıt Ol" OnClick="btnKayit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblKayitDurum" runat="server"></asp:Label>
                    </p>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>
