using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace urun_kayit
{
    public partial class SifreYenile : System.Web.UI.Page
    {
        string sorgu;
        protected void btnSifreYenile_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
            baglanti.Open();
            sorgu = "update tblMusteri set musteriPasswd=@sifre WHERE musteriNo=@musteriNumara";
            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@sifre", txtYeniSifre.Text);
            komut.Parameters.AddWithValue("@musteriNumara", Session["numara"].ToString());
            komut.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            SqlDataReader dr = komut.ExecuteReader();
            while (true)
            {
                lblDurum.Text = " Şifre Yenileme Başarılı ! Giriş Yapmak için yönlendiriliyorsunuz ... ";
                break;
            }
            baglanti.Close();
            //Wait for 5 seconds
            System.Threading.Thread.Sleep(3000);
            Response.Redirect("login.aspx");
        }
    }
}