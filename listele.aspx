<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="urun_kayit.listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="btnAlisveris" runat="server" Height="80px" OnClick="btnAlisveris_Click" Text="Alışverişe Başla" Width="220px" />
    <center>
            <p>
            <img alt="" class="auto-style1" src="Resimler/Logo.png" />
            </p>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Width="250px"></asp:DropDownList>
                <asp:Button ID="btnlistele" runat="server" OnClick="btnlistele_Click" Text="Listele" />
            <table style="width: 1200px; height: 200px;">
            <tr>
            <td style="width: 999px; height: 200px;">
            <table style="width: 1182px; height: 200px;">
            <tr>
            <td class="tablo1" aria-expanded="undefined" style="width: 170px">
                <textarea id="TextArea1" runat="server" cols="20" name="S1" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1" style="width: 170px">  
                <textarea id="TextArea2" runat="server" cols="20" name="S2" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1" style="width: 170px">
                <textarea id="TextArea3" runat="server" cols="20" name="S3" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1" style="width: 170px">  
                <textarea id="TextArea4" runat="server" cols="20" name="S4" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1" style="width: 170px">
                <textarea id="TextArea5" runat="server" cols="20" name="S5" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1" style="width: 170px">  
                <textarea id="TextArea6" runat="server" cols="20" name="S6" rows="2" style="width: 100px; height: 100px"></textarea></td>
            <td class="tablo1">
                <textarea id="TextArea7" runat="server" cols="20" name="S7" rows="2" style="width: 100px; height: 100px"></textarea></td>
            </tr>

            </table>
            </td>
            </tr>
            </table>
    </center>
</asp:Content>
