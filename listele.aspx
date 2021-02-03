<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="urun_kayit.listele" %>

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
    </style>

    <!--Repeater örneğimizde her kaydı bir tablo satırı olarak tekrar ettiriyoruz.
  Bunun için başlık olarak kullanılmak üzere Repeater kontrolü tanımlamasından önce
  bir HTML tablosu ve satırı tanımlıyoruz...-->
    <table border="1" style="width: 1180px;">
        <tr style="font-family: 'Bauhaus 93'; font-size: 24px; text-align: center; width: 150px">
            <td style="width: 150px; height: 150px">Resim</td>
            <td style="background-color: #959490">Ana Kategori</td>
            <td style="background-color: #ccc7c1">Alt Kategori</td>
            <td style="background-color: #609eab">Ürün Adı</td>
            <td style="background-color: #a2cedb">Fiyat</td>
            <td style="background-color: #8ba8b6">Olaylar</td>
        </tr>
        <asp:Repeater ID="rptListe" runat="server">
            <ItemTemplate>
                <tr style="height: 150px; width: 100%; text-align: center; font-family: 'Arial Rounded MT'">
                    <!-- Repeater kontrolü sırayla kendisine yüklenen bütün kayıtlara konumlanarak,
             her bir kayıt için buradaki şablonu tekrar eder. Bu arada alan adlarını bir yere
             yazdırmak gerektiğinde aşağıdaki kod bloğu içindeki form kullanılır. -->
                    <td>
                        <img src="foto/<%# Eval("Image") %>" />
                    </td>
                    <td style="background-color: #959490"><%# DataBinder.Eval(Container.DataItem, "AnaKategori") %></td>
                    <td style="background-color: #ccc7c1"><%# DataBinder.Eval(Container.DataItem, "AltKategori") %></td>
                    <td style="background-color: #609eab"><%# DataBinder.Eval(Container.DataItem, "UrunAd") %></td>
                    <td style="background-color: #a2cedb"><%# DataBinder.Eval(Container.DataItem, "Fiyat") %> TL </td>
                    <td style="background-color: #8ba8b6">
                        <asp:TextBox ID="txtUrunSay" runat="server" Style="width: 60px; height: 30px;" Text="1" placeholder="-----" text-align="center   " />
                        <br />
                        <br />
                        <asp:Button ID="btnSepeteEkle" Text="Sepete Ekle" runat="server" CssClass="button" OnClick="btnSepeteEkle_Click" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
