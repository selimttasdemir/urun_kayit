<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SifreYenile.aspx.cs" Inherits="urun_kayit.SifreYenile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
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
    </style>

    <form action="#" style="background-color: #4aaaa5; height: 450px;">
        <h1>Şifre Yenileme</h1>
        &nbsp;<br />
        <asp:TextBox ID="txtYeniSifre" runat="server" placeholder="Yeni Şifrenizi Girin ..." TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btnSifreYenile" runat="server" Text="Şifre Değiştir" CssClass="button" OnClick="btnSifreYenile_Click" />

        <br />
        <asp:Label ID="lblDurum" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblDurum0" runat="server" Visible="False"></asp:Label>
    </form>

</asp:Content>
