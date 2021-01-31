<%@ Page Title="ŞekilŞukul.com" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="urun_kayit.login" %>



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

        form {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 50px;
            height: 100%;
            text-align: center;
        }

        input {
            background-color: #eee;
            border: none;
            padding: 12px 15px;
            margin: 8px 0;
            width: 200px;
        }

        .auto-style1 {
            height: 500px;
        }
    </style>

    <div class="auto-style1">
        <center>
            <table style="width: 1200px; height: 450px;">
                <tr>
                    <center>
                        <td style="width: 600px; padding-left:200px; height:450px; background-color:#7accc8">
                            <form action="#" style="background-color:#7accc8;">
                                <h1 style="padding-left:45px">Sign In</h1>
                                <span style="padding-left:50px;">Use Your Account<br />
                                </br></span>
                                <asp:TextBox  ID="txtKullanici" runat="server" placeholder="E-mail"></asp:TextBox>
                                <asp:TextBox ID="txtSifre" runat="server" placeholder="Password" TextMode ="Password"></asp:TextBox>
                                <br />
                                <a href="sifremiUnuttum.aspx">Forgot your password?</a><br />
                                <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="button" OnClick="btnGiris_Click1"/>
                                <br />
                            </form>
                            <asp:Label ID="lblGirisDurum" runat="server"></asp:Label>
                        </td>
                    </center>

                    <center>
                    <td style="width:600px; padding-left:200px; background-color:#4aaaa5; height:450px;">
                        <br />
                            <h1>Create Account</h1>
                            <span>Use Your E-mail for Registration</span>
                            <br />
                            <asp:TextBox ID="txtKayitAd" runat="server" placeholder="Name"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtKayitMail" runat="server" placeholder="E-mail"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtKayitSifre" runat="server" placeholder="Password" TextMode ="Password"></asp:TextBox>
                            <br />
                            <asp:Button ID="btnKayit" runat="server" CssClass="button" OnClick="btnKayit_Click1" Text="KAYIT OL" />
                        <br />
                        <asp:Label ID="lblKayitDurum" runat="server"></asp:Label>
                        <br />
                        <br />
                    </td>
                    </center>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
