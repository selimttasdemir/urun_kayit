<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlisVeris.aspx.cs" Inherits="urun_kayit.AlisVeris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="padding-bottom: 25px; background-color: #4aaaa5">
            <table align="center" cellpadding="2" width="300px;">
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
                        <asp:Button ID="btnSepeteEkle" runat="server" Text="Sepete Ekle" OnClick="btnSepeteEkle_Click" Height="40px" Width="100px" />
                        <asp:Button ID="btnGoster" runat="server" OnClick="btnGoster_Click" Text="Fiyat Gör" Height="40px" Style="margin-bottom: 9" Width="100px" />
                    </td>
                </tr>
            </table>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" OnItemCommand="DataList1_ItemCommand"
                ForeColor="#333333" BorderColor="Black" BorderWidth="1px" CellSpacing="2" Font-Bold="False"
                Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
                HorizontalAlign="Center" ShowFooter="False" Height="200px" Width="500px">
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
            <center><asp:Label ID="lblToplam" runat="server" BorderStyle="Solid" style="font-size:15px"></asp:Label></center>
        </div>
    </div>

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

</asp:Content>
