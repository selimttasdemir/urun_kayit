using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace urun_kayit
{
    public partial class adminGiris : System.Web.UI.Page
    {
        string kullaniciad, kullanicisifre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                Response.Write("Hoşgeldin " + Session["kullanici"]);
            }
            //else
            //{
            //    Response.Redirect("adminGiris.aspx");
            //}

        }
        // "SELECT * FROM tblPersonel WHERE KULLANICIADI=@user AND SIFRE=@pass"

        //baglanti.ConnectionString = "Server=.;Database=urunKayitListeleme;Integrated Security = True";


        protected void btnGiris_Click(object sender, EventArgs e)
        {
            kullaniciad = txtKullanici.Text;
            kullanicisifre = txtSifre.Text;
            SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
            SqlCommand komut = new SqlCommand();
            string sorgu = "Select * from tblAdmin where username=@user AND passwd=@pass";
            komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@user", kullaniciad);
            komut.Parameters.AddWithValue("@pass", kullanicisifre);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session.Add("kullanici", kullaniciad);
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblDurum.Text = "Giriş Başarısız";
            }
            baglanti.Close();
        }
    }
}