<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="urun_kayit.listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--Repeater örneğimizde her kaydı bir tablo satırı olarak tekrar ettiriyoruz.
  Bunun için başlık olarak kullanılmak üzere Repeater kontrolü tanımlamasından önce
  bir HTML tablosu ve satırı tanımlıyoruz...-->


    <table border="1" style="width: 1180px;">
        <tr style="font-family: 'Bauhaus 93'; font-size: 24px; text-align: center; width: 150px">
            <td style="width: 150px; height: 150px">Resim</td>
            <td>Ana Kategori</td>
            <td>Alt Kategori</td>
            <td>Ürün Adı</td>
            <td>Fiyat</td>
        </tr>

        <asp:Repeater ID="rptListe" runat="server">

            <ItemTemplate>
                <tr style="height: 150px; width: 100%; text-align: center; font-family: 'Arial Rounded MT'">
                    <!--Repeater kontrolü sırayla kendisine yüklenen bütün kayıtlara konumlanarak,
             her bir kayıt için buradaki şablonu tekrar eder. Bu arada alan adlarını bir yere
             yazdırmak gerektiğinde aşağıdaki kod bloğu içindeki form kullanılır (Küçük ve
             yüzde işaretleri arasındaki bölüm). -->
                    <td>
                        <img src="foto/<%# Eval("Image") %>" />
                    </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "AnaKategori") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "AltKategori") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "UrunAd") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Fiyat") %> TL </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
