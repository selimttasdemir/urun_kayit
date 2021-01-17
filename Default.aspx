<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="urun_kayit._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Ürün Kayıt / Sorgulama</h1>
        <p class="lead">Kaydetmek istediğiniz ürünleri butona tıkladıktan sonra kaydetmeye başlayabilirsiniz.</p>
        <p><a href="urunEkleme.aspx" class="btn btn-primary btn-lg">Kaydetmeye Başla»</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Başlarken ...</h2>
            <p>
                Ürünlerinizi kaydetmeden önce gerekli <a href="uyarıları okuyunuz">uyarıları okuyunuz</a> .</p>
        </div>
        <div class="col-md-4">
            <h2>Ürün Kütüphaneleri Hakkında ...</h2>
            <p>
                Kaydettiğiniz ürünlerin listesi için <a href="listele.aspx">tıklayınız .</a></p>
        </div>
        <div class="col-md-4">
            <h2>Uygulamayı Satın Almak İçin</h2>
            <p>
                Bu ürünü satın almak için iletişim sekmesinden bize ulaşın...
            </p>
            <p>
                <a class="btn btn-default" href="Contact.aspx">İletişim &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
