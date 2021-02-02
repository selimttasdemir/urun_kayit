using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace urun_kayit
{
    public partial class kullaniciSayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                Response.Write("Hoşgeldin " + Session["kullanici"]);
                txtMail.Text = Session["kullanici"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");

            }
        }

        protected void btnBilgiGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                baglanti.Open();
                string sorgu = "update tblMusteri set musteriAdi=@ad, musteriSoyadi=@soyad, musteriNo=@numara, dogumTarihi=@tarih WHERE musteriUser=@musteriUser";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@ad", txtAd.Text);
                komut.Parameters.AddWithValue("@soyad", txtSoyad.Text);
                komut.Parameters.AddWithValue("@numara", txtTelNo.Text);
                komut.Parameters.AddWithValue("@tarih", txtTarih.Text);
                komut.Parameters.AddWithValue("@musteriUser", txtMail.Text);
                komut.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(komut);
                SqlDataReader dr = komut.ExecuteReader();
                while (true)
                {
                    lblDurum.Text = " Bilgileriniz Güncellendi ! Ürünler Sayfasına yönlendiriliyorsunuz ... ";
                    break;
                }
                baglanti.Close();
                lblDurum.Text = "Bilgileriniz Başarıyla Güncellendi !";
                //Wait for 5 seconds
                System.Threading.Thread.Sleep(3000);
                //Response.Redirect("urunler.aspx");
            }
            catch (Exception)
            {
                lblDurum.Text = "Güncelleme Başarısız... Hatanın Devam Etmesi Durumunda BT Departmanına Bildiriniz !";
            }

        }

        protected void btnSifreGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtSifre.Text != "" && txtYeniSifre1.Text != "" && txtYeniSifre2.Text != "")
                {

                    if (txtSifre.Text == Session["psw"].ToString())
                    {
                        SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                        baglanti.Open();
                        string sorgu = "update tblMusteri set musteriPasswd=@sifre WHERE musteriUser=@musteriUser";
                        SqlCommand komut = new SqlCommand(sorgu, baglanti);
                        komut.Parameters.AddWithValue("@sifre", txtYeniSifre1.Text);
                        komut.Parameters.AddWithValue("@musteriUser", txtMail.Text);
                        komut.ExecuteNonQuery();

                        SqlDataAdapter da = new SqlDataAdapter(komut);
                        SqlDataReader dr = komut.ExecuteReader();
                        while (true)
                        {
                            lblSifreDegistir.Text = " Şifre Yenileme Başarılı !";
                            break;
                        }
                        baglanti.Close();
                        lblSifreDegistir.Text = " Şifre Yenileme Başarılı !";
                        //Wait for 5 seconds
                        System.Threading.Thread.Sleep(2000);
                        //Response.Redirect("login.aspx");
                    }
                    else
                    {
                        lblSifreDegistir.Text = "Şu Anki Şifrenizi Girmelisiniz.";
                    }
                }
                else
                {
                    lblSifreDegistir.Text = "Kutular Boş Bırakılamaz.\n Şifre Değştirme Başarısız ..!";
                }
            }
            catch (Exception)
            {

                lblSifreDegistir.Text = "Kutular Boş Bırakılamaz.\n Şifre Değştirme Başarısız ..!";
            }
        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                Session.Clear();
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");

            }
        }
    }
}