﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sifremiUnuttum.aspx.cs" Inherits="urun_kayit.sifremiUnuttum" %>

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
    </style>
    <center>
    <div style="width: 600px; height: 450px; background-color: #7accc8">
        <form action="#" style="background-color: #4aaaa5; height: 450px;">
            <br />
            <br />
            <h1>Şifremi Unuttum</h1>
            &nbsp;<br />
            <asp:TextBox ID="txtSifremiUnuttumMail" runat="server" placeholder="E-mail"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtSifremiUnuttumTelNo" runat="server" placeholder="Kayıtlı Telefon Numarası"></asp:TextBox>
            <br />
            <asp:Button ID="btnSifreYenile" runat="server" Text="GÖNDER" CssClass="button" OnClick="btnSifreYenile_Click1" />
            <br />
        </form>
        <asp:Label ID="lblinfo" runat="server"></asp:Label>
    </div>
    </center>
</asp:Content>
