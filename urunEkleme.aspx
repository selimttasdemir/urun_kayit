<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="urunEkleme.aspx.cs" Inherits="urun_kayit.urunEkleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color: #F0F0F0">
        <asp:Image ImageUrl='<%# Eval("Id", "~/Image.ashx?Id={0}") %>' runat="server" />

        <br />
        <br />
        <form method="get" enctype="multipart/form-data">

            <style>
                table.tablo {
                    overflow-x: auto;
                }

                table {
                    border-collapse: collapse;
                    width: 100%;
                }

                th, td {
                    text-align: left;
                    padding: 8px;
                }

                tr:nth-child(even) {
                    background-color: #f2f2f2;
                }

                th {
                    background-color: forestgreen;
                    color: white;
                }

                .auto-style1 {
                    width: 190px;
                }

                .auto-style2 {
                    height: 39px;
                }

                .auto-style3 {
                    width: 295px;
                    height: 39px;
                }
            </style>

            <table border="2";class="tablo">
                <tr>
                    <td>Ana Kategori:</td>
                    <td colspan="1" class="modal-sm" style="width: 295px">
                        <select name="anaKategori" id="anaKategori" class="auto-style1">
                            <option value="Kaban">Kaban</option>
                            <option value="Sweet">Sweet</option>
                            <option value="T-Shirt">T-Shirt</option>
                            <option value="Bere">Bere</option>

                        </select>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style2">Alt Kategori:</td>
                    <td colspan="1" class="auto-style3">
                        <select name="altKategori" id="altKategori" class="auto-style1">
                            <option value="Erkek">Erkek</option>
                            <option value="Kadın">Kadın</option>
                        </select></td>
                </tr>

                <tr>
                    <td class="auto-style2">Ürün Adı:</td>
                    <td colspan="1" class="auto-style3">
                        <asp:TextBox ID="txtAd" runat="server" Width="190px" ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Ürün Ağırlığı:</td>
                    <td class="modal-sm" style="width: 295px">
                        <asp:TextBox ID="txtAgirlik" runat="server" Width="190px" placeholder="Ürün Ağırlğını Girin"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Ürün Fiyatı:</td>
                    <td class="modal-sm" style="width: 295px">
                        <asp:TextBox ID="txtFiyat" runat="server" Width="190px" placeholder="Ürün Fiyatını Girin"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Gönderilen Şehir:</td>
                    <td class="modal-sm" style="width: 295px">
                        <asp:TextBox ID="txtSehir" runat="server" Width="190px" placeholder="Şehir Girin"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Alıcının Telefon No:</td>
                    <td class="modal-sm" style="width: 295px">
                        <asp:TextBox ID="txtNumara" runat="server" Width="190px" placeholder="Telefon Numarası Girin"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Resim Ekle:</td>
                    <td class="modal-sm" style="width: 295px">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <tr>
                        <td>Açıklama</td>
                        <td class="modal-sm" style="width: 295px">
                            <textarea name="gorus" id="aciklama" placeholder="BİR AÇIKLAMA METNİ GİRİNİZ"></textarea>
                        </td>
                    </tr>
                </tr>

                <tr>
                    <td colspan="2">
                        &nbsp;<asp:Button ID="btnkaydet" runat="server" OnClick="Button1_Click" Text="Kaydet" Width="85px" />
                        &nbsp;<asp:Button ID="Button1" runat="server" Text="Temizle" Width="85px" />
                    </td>
                </tr>

            </table>
        </form>
        <br />
        <br />
        <br />
    </div>

</asp:Content>
