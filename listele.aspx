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

        .auto-style1 {
            width: 101px;
        }

        .auto-style2 {
            width: 74px;
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
            <td style="background-color: #609eab" class="auto-style2">Ürün Adı</td>
            <td style="background-color: #a2cedb" class="auto-style1">Fiyat</td>
            <td style="background-color: #8fa8b6">Ürün ID</td>
            <%--            <td style="background-color: #8ba8b6">Olaylar</td>--%>
        </tr>
        <asp:Repeater ID="rptListe" OnItemCommand="rptListe_ItemCommand" runat="server">
            <ItemTemplate>
                <tr style="height: 150px; width: 100%; text-align: center; font-family: 'Arial Rounded MT'">
                    <!-- Repeater kontrolü sırayla kendisine yüklenen bütün kayıtlara konumlanarak,
             her bir kayıt için buradaki şablonu tekrar eder. Bu arada alan adlarını bir yere
             yazdırmak gerektiğinde aşağıdaki kod bloğu içindeki form kullanılır. -->
                    <td>
                        <img style="width: 200px; height: 200px" src="foto/<%# Eval("Image") %>" />
                    </td>
                    <td style="background-color: #959490"><%# DataBinder.Eval(Container.DataItem, "AnaKategori") %></td>
                    <td style="background-color: #ccc7c1"><%# DataBinder.Eval(Container.DataItem, "AltKategori") %></td>
                    <td style="background-color: #609eab"><%# DataBinder.Eval(Container.DataItem, "UrunAd") %></td>
                    <td style="background-color: #a2cedb"><%# DataBinder.Eval(Container.DataItem, "Fiyat") %> TL </td>
                    <td><%# DataBinder.Eval(Container.DataItem, "urunID") %></td>
                    <%--<td style="background-color: #8ba8b6">
                        <asp:TextBox ID="txtUrunAdet" runat="server" Style="width: 60px; height: 30px;" Text="1" placeholder="-----" text-align="center" />
                        <br />
                        <br />
                        <asp:Button ID="btnSepeteEkle" Text="Sepete Ekle" runat="server" CssClass="button" />
                    </td>--%>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>

    <div>
        <div>
            <tr>
                <td style="height: 35px">
                    <asp:Label ID="Label1" runat="server" Text="Ürün ID"></asp:Label>
                </td>
                <td style="height: 35px">:
                </td>
                <td style="height: 35px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Width="190px" Height="20px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 40px">
                    <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
                </td>
                <td style="height: 40px">:
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="txtAdi" runat="server" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px">
                    <asp:Label ID="Label3" runat="server" Text="Fiyat"></asp:Label>
                </td>
                <td style="height: 40px">:
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="txtFiyat" runat="server" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px">
                    <asp:Label ID="Label4" runat="server" Text="Adet"></asp:Label>
                </td>
                <td style="height: 40px">:
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="txtAdet" runat="server" CssClass="numericOnly" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblidid" runat="server" Text="Label"></asp:Label>
                    &nbsp;
                </td>
                <td>&nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSepeteEkle" runat="server" Text="Sepete Ekle" Height="40px" Width="100px" OnClick="btnSepeteEkle_Click" />
                    <asp:Button ID="btnGoster" runat="server" Text="Fiyat Gör" Height="40px" Style="margin-bottom: 9" Width="100px" OnClick="btnGoster_Click" />
                </td>
            </tr>
        </div>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" OnItemCommand="DataList1_ItemCommand"
            ForeColor="#333333" BorderColor="Black" BorderWidth="1px" CellSpacing="2" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            HorizontalAlign="Center" ShowFooter="False" Height="200px" Width="550px">
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderTemplate>
                <table align="center" cellpadding="3" cellspacing="3" width="400">
                    <tr>
                        <td align="left" width="10px">ID
                        </td>
                        <td align="left" width="100px">AD
                        </td>
                        <td align="left" width="30px">FIYAT
                        </td>
                        <td align="left" width="15px">ADET
                        </td>
                        <td align="left" width="50px">TUTAR
                        </td>
                        <td align="center" width="10px">SİL
                        </td>
                    </tr>
                </table>
            </HeaderTemplate>
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table align="center" cellpadding="3" cellspacing="3" width="400">
                    <tr>
                        <td align="left" width="10px">
                            <%# Eval("id") %>
                        </td>
                        <td align="left" width="100px">
                            <%# Eval("isim") %>
                        </td>
                        <td align="left" width="30px">
                            <%# Eval("fiyat") %>
                        </td>
                        <td align="left" width="15px">
                            <%# Eval("adet") %>
                        </td>
                        <td align="left" width="50px">
                            <%# Eval("tutar") %>
                        </td>
                        <td align="center" width="10px">
                            <asp:LinkButton ID="btnSil" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="sil">Sil</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <div style="position: center">
            <asp:Label ID="lblToplam" runat="server" BorderStyle="Solid" Style="font-size: 15px"></asp:Label>
            <asp:Button Text="Satın Al" Visible="false" ID="btnSatinAl" OnClick="btnSatinAl_Click" runat="server" />
        </div>

    </div>

</asp:Content>
