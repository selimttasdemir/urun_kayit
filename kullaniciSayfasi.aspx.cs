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

        }

        protected void btnBilgiGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                baglanti.Open();
                string sorgu = "update tblMusteri set musteriAd=@ad,musteriSoyad=@soyad,musteriNo=@numara,dogumTarihi=@tarih WHERE musteriUser";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@ad",txtAd.Text);
                komut.Parameters.AddWithValue("@soyad", txtSoyad.Text);
                komut.Parameters.AddWithValue("@numara",txtTelNo);
                komut.Parameters.AddWithValue("@tarih", txtTarih.Text);
                komut.Parameters.AddWithValue("@musteriUser", Session["kullanici"].ToString());
                komut.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(komut);
                SqlDataReader dr = komut.ExecuteReader();
                while (true)
                {
                    lblDurum.Text = " Bilgileriniz Güncellendi ! Ürünler Sayfasına yönlendiriliyorsunuz ... ";
                    break;
                }
                baglanti.Close();

                //Wait for 5 seconds
                System.Threading.Thread.Sleep(5000);
                Response.Redirect("urunler.aspx");
            }
            catch (Exception)
            {

                lblDurum.Text = "Güncelleme Başarısız. Hatanın devam etmesi durumunda BT Departmanına bildiriniz ! ";
            }
        }

        protected void btnSifreGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                baglanti.Open();
                string sorgu = "update tblMusteri set musteriPasswd=@sifre WHERE musteriUser=@musteriUser";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@sifre", txtYeniSifre1.Text);



                komut.Parameters.AddWithValue("@musteriUser", Session["kullanici"].ToString());
                komut.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(komut);
                SqlDataReader dr = komut.ExecuteReader();
                while (true)
                {
                    lblSifreDegistir.Text = " Şifre Yenileme Başarılı ! Giriş Yapmak için yönlendiriliyorsunuz ... ";
                    break;
                }
                baglanti.Close();

                //Wait for 5 seconds
                System.Threading.Thread.Sleep(5000);
                Response.Redirect("login.aspx");
            }
            catch (Exception)
            {

                lblSifreDegistir.Text="Şifre Değştirme Başarısız ..!";
            }
        }
    }
}