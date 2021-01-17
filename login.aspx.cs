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
            if (Session["kullanici"] != null)
            {
                Response.Write("Hoşgeldin " + Session["kullanici"]);
            }
        }
        string kullaniciad, kullanicisifre, Mkullaniciad, Mkullanicisifre;

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            Mkullaniciad = txtKayitAd.Text;
            Mkullanicisifre = txtKayitSifre.Text;

            if (txtKayitAd.Text != "" && txtKayitSifre.Text != "")
            {
                SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                string sorgu = "INSERT INTO tblMusteri (musteriUser,musteriPasswd) VALUES (@P1,@P2)";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                ds = new DataSet();
                komut.Parameters.AddWithValue("@P1", Mkullaniciad);
                komut.Parameters.AddWithValue("@P2", Mkullanicisifre);

                baglanti.Open();
                komut.ExecuteNonQuery();
                Response.Write("Kayıt Eklendi");
                baglanti.Close();
            }
            else
            {
                lblKayitDurum.Text = "Kayıt Eklenemedi!!!!";
            }

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {

            //baglanti.ConnectionString = "Server=.;Database=urunKayitListeleme;Integrated Security = True";

            kullaniciad = txtKullanici.Text;
            kullanicisifre = txtSifre.Text;
            SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
            SqlCommand komut = new SqlCommand();
            string sorgu = "Select * from tblMusteri where musteriUser=@kadi AND musteriPasswd=@sifre";
            komut = new SqlCommand(sorgu, baglanti);
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