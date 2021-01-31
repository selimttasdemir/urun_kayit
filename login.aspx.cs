using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace urun_kayit
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["veritabanıBaglantisi"].ConnectionString);
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["kullanici"] != null)
            //{
            //    Response.Write("Hoşgeldin " + Session["kullanici"]);
            //}
        }
        string kullaniciad, kullanicisifre, Mkullaniciad, Mkullanicisifre, MkullaniciMail, sorgu;

        protected void btnKayit_Click1(object sender, EventArgs e)
        {
            Mkullaniciad = txtKayitAd.Text;
            Mkullanicisifre = txtKayitSifre.Text;
            MkullaniciMail = txtKayitMail.Text;
            try
            {
                if (MkullaniciMail != "" && Mkullanicisifre != "" && Mkullaniciad != "")
                {
                    SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                    sorgu = "insert into tblMusteri (musteriAdi,musteriUser,musteriPasswd) values (@name,@user,@sifre)";
                    SqlCommand komut = new SqlCommand(sorgu, baglanti);
                    ds = new DataSet();
                    komut.Parameters.AddWithValue("@name", Mkullaniciad);
                    komut.Parameters.AddWithValue("@user", MkullaniciMail);
                    komut.Parameters.AddWithValue("@sifre", Mkullanicisifre);
                    baglanti.Open();
                    komut.ExecuteNonQuery();
                    lblKayitDurum.Text = "KAYIT BAŞARILI !";
                    baglanti.Close();
                }
                else
                {
                    lblKayitDurum.Text = "Kayıt Eklenemedi!!!!";
                }
            }
            catch (Exception)
            {
                lblKayitDurum.Text = "Başarısız Kayıt !";
            }



            
        }

        protected void btnGiris_Click1(object sender, EventArgs e)
        {
            //baglanti.ConnectionString = "Server=.;Database=urunKayitListeleme;Integrated Security = True";

            kullaniciad = txtKullanici.Text;
            kullanicisifre = txtSifre.Text;
            SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
            SqlCommand komut = new SqlCommand();
            string sorgu0 = "Select * from tblMusteri where musteriUser=@kadi AND musteriPasswd=@sifre";
            komut = new SqlCommand(sorgu0, baglanti);
            komut.Parameters.AddWithValue("@kadi", kullaniciad);
            komut.Parameters.AddWithValue("@sifre", kullanicisifre);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session.Add("kullanici", kullaniciad);
                Response.Redirect("listele.aspx");
            }
            else
            {
                lblGirisDurum.Text = "Giriş Başarısız";
            }
            baglanti.Close();
        }
    }
}