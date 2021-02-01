<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kullaniciSayfasi.aspx.cs" Inherits="urun_kayit.kullaniciSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        * {
            box-sizing: border-box;
        }

        .button {
            border-radius: 20px;
            border: 1px solid #FF4B2B;
            background-color: #e45f56;
            color: #FFFFFF;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }

            .button:active {
                transform: scale(0.95);
            }

            .button:focus {
                outline: none;
            }

            .button.ghost {
                background-color: transparent;
                border-color: #FFFFFF;
            }

        input {
            background-color: #eee;
            border: none;
            padding: 12px 15px;
            margin: 8px 0;
            width: 200px;
            height: 25px;
        }
    </style>


    <div style="height: 750px; width: 1050px; padding-left: 75px">


        <table style="height: 600px; width: 1050px">
            <tr>
                <center>
                <td style="width: 525px;background-color:#4aaaa5; position:center;">
                    <div style="padding-left:175px; position:center;">
                        <h1 style="">Üyelik Bilgilerim</h1>
                        <asp:TextBox ID="txtAd" runat="server" Height="25px" Width="180px" placeholder="Adınızı Giriniz ..."></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtSoyad" runat="server" Height="25px" Width="180px" placeholder="Soyadınızı Giriniz ..."></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtTelNo" runat="server" Height="25px" Width="180px" placeholder="Telfn Numaranızı Giriniz ..." TextMode="Phone" CssClass="numericOnly"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtMail" runat="server" Height="25px" Width="180px" placeholder="E-Mail Giriniz ..." TextMode="Email"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtTarih" runat="server" Height="25px" Width="180px" placeholder="Doğum Tarihinizi Giriniz ..." TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnBilgiGuncelle" CssClass="button" runat="server" Height="48px" Text="Güncelle" Width="180px" OnClick="btnBilgiGuncelle_Click" />
                    </div>
                </td>
                </center>
                <center>
                <td style="width: 525px; background-color:#7accc8; position:center">
                    <div style="padding-left:175px;">
                        <br />
                        <h1 style="">Şifre Güncelleme</h1>
                        <asp:TextBox ID="txtSifre" runat="server" Height="25px" Width="180px" placeholder="Şu Anki Şifreniz" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtYeniSifre1" runat="server" Height="25px" Width="180px" placeholder="Yeni Şifre" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="txtYeniSifre2" runat="server" Height="25px" Width="180px" placeholder="Yeni Şifre Tekrar" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnSifreGuncelle" CssClass="button" runat="server" Height="48px" Text="Güncelle" Width="180px" />
                        <br />
                    </div>
                </td>
                </center>
            </tr>
        </table>

        <script>
            $(function () {
                $(".numericOnly").keydown(function (e) {
                    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                        (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) ||
                        (e.keyCode >= 35 && e.keyCode <= 40)) {
                        return;
                    }
                    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                        e.preventDefault();
                    }
                });
            });
        </script>

    </div>

</asp:Content>
