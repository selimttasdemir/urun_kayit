<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="urun_kayit.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>İletişim Sayfası.</h3>
    <address>
        USA-Califonia
        <br />
        <br />
        <abbr title="Phone">PHONE:</abbr>
        +90 555 555 55 55
    </address>

    <address>
        <strong>Support:</strong>   <a href="example@gmail.com">example@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="example@gmail.com">example@gmail.com</a>
    </address>
</asp:Content>
