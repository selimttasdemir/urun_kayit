<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OdemeSayfasi.aspx.cs" Inherits="urun_kayit.OdemeSayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .container {
            display: table;
            margin: 0px auto;
            padding-top: 50px;
        }

        #sonuc {
            background-color: #e8c7dd;
        }

        .sinif {
            border: 2px green solid;
            border-radius: 4px;
            text-align: center;
        }
    </style>


    <div class="container">
        <div class="row">
            <div style="font-family: TechnicBold; font-size: 36px;">
                Kredi Kartı Bilgilerinizi Girerek Satın Alma işlemini Tamamlayabilirisniz...
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-4">
                Kart Sahibi:
                <input type="text" class="sinif" id="kartSahibi" maxlength="25" size="25" placeholder="Adınızı Girin...">
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-1">
                Kart No:
                <input type="text" class="sinif" id="a" maxlength="4" size="4" placeholder="* * * *">
            </div>

            <div class="col-xs-1">
                <input type="text" class="sinif" id="b" maxlength="4" size="4" placeholder="* * * *">
            </div>

            <div class="col-xs-1">
                <input type="text" class="sinif" id="c" maxlength="4" size="4" placeholder="* * * *">
            </div>

            <div class="col-xs-1">
                <input type="text" class="sinif" id="d" maxlength="4" size="4" placeholder="* * * *">
            </div>
            <div class="col-xs-9">
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                CVV:
                <input type="text" class="sinif" id="cvv" maxlength="3" size="3" placeholder="CVV">
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <br />
                <asp:Label ID="lblSonuc" Text="" runat="server" />
                <asp:Button Text="Satın Al" ID="btnSatinAl" OnClick="btnSatinAl_Click" runat="server" />
            </div>
        </div>
    </div>
    <script>
        $(function () {
            $(".sinif").keyup(function (e) {
                var deger = $(this).val().length;
                if (e.keyCode == 8) {//backspace başı
                    $(this).css("background-color", "#bbbbff");
                    if (deger == 0) {
                        if (this.id == "b") {
                            $("#a").focus();
                            if ($("#a").val().length == 4) {
                                $("#a").select();
                            }
                            $("#a").css("background-color", "#bbbbff");
                        }
                        else if (this.id == "c") {
                            $("#b").focus();
                            if ($("#b").val().length == 4) {
                                $("#b").select();
                            }
                            $("#b").css("background-color", "#bbbbff");
                        }
                        else if (this.id == "d") {
                            $("#c").focus();
                            if ($("#c").val().length == 4) {
                                $("#c").select();
                            }
                            $("#c").css("background-color", "#bbbbff");
                        }
                    }
                }//backspace sonu
                else {
                    if (deger > 3) {
                        if (this.id == "a") {
                            $("#b").focus();
                            if ($("#b").val().length == 4) {
                                $("#b").select();
                            }
                        }
                        else if (this.id == "b") {
                            $("#c").focus();
                            if ($("#c").val().length == 4) {
                                $("#c").select();
                            }
                        }
                        else if (this.id == "c") {
                            $("#d").focus();
                            if ($("#d").val().length == 4) {
                                $("#d").select();
                            }
                        }
                        $(this).css("background-color", "#bbffbb");
                        $(this).next(".sinif").next().css("background-color", "#666666");
                    }
                    else if (deger.length < 0) {
                        $("#sonuc").html("eksi");
                    }
                    else {
                        $(this).css("background-color", "#ffbbbb");
                        $("#sonuc").html("xxxx");
                    }
                }
                var kartNo = $("#a").val() + $("#b").val() + $("#c").val() + $("#d").val();
                $("#sonuc").html(kartNo);
            });
        });
    </script>
</asp:Content>
