using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

namespace urun_kayit
{
    public partial class sifremiUnuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string sorgu, kullaniciMail, kullaniciNumara;
        protected void btnSifreYenile_Click1(object sender, EventArgs e)
        {
            kullaniciMail = txtSifremiUnuttumMail.Text;
            kullaniciNumara = txtSifremiUnuttumTelNo.Text;

            if (kullaniciMail != "" && kullaniciNumara != "")
            {
                SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                sorgu = "Select * from tblMusteri where musteriUser=@user AND musteriNo=@numara";
                SqlCommand komut = new SqlCommand(sorgu, baglanti);
                komut.Parameters.AddWithValue("@numara", kullaniciNumara);
                komut.Parameters.AddWithValue("@user", kullaniciMail);
                baglanti.Open();
                SqlDataReader oku = komut.ExecuteReader();
                try
                {
                    if (oku.Read())
                    {
                        Session["numara"] = kullaniciNumara;

                        Session.Add("kullanici", kullaniciMail);
                        Response.Redirect("SifreYenile.aspx");
                    }
                    else
                    {
                        lblinfo.Text = "Giriş Başarısız !!!";
                    }
                    baglanti.Close();
                }
                catch (Exception)
                {
                    lblinfo.Text = "Giriş Başarısız !!!";
                }
            }
            else
            {
                lblinfo.Text = "Girdiler Boş Geçilemez !";
            }
            
        }
        
    }
}