using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace urun_kayit
{
    public partial class listele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Bağlantı nesnesini tanımla ve oluştur...
            SqlConnection baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");

            // SQL Sorgularını çalıştırmak ve sonuçlarını almak için kullanılacak OleDbCommand
            // nesnesini tanımla ve oluştur...
            SqlCommand komut = new SqlCommand("SELECT * FROM urunler", baglanti);

            // Bağlantıyı aç...
            baglanti.Open();

            /*
            Repeater nesnemizin kayıtları listelerken kullanacağı kayıt kümesini belirliyoruz.
            Bunun için DataSource özelliğine OleDbCommand nesnesinin (Örneğimizde Komut isimli
            değişken / nesne) ExecuteReader metodu ile dönen OleDbDataReader nesnesini atıyoruz.
            */

            rptListe.DataSource = komut.ExecuteReader();

            /*
            Repeater kontrolünün DataBind metodu, Repeater nesnesinin DataSource özelliğinde
            (Bu özelliğe atanan OleDbDataReader'deki) tutulan kayıtları listeler
            (Veileri doldur demek) ...
            */

            rptListe.DataBind();

            // İşin bitince bağlantıyı hemen kapat...
            baglanti.Close();

        }


        protected void btnAlisveris_Click(object sender, EventArgs e)
        {
            Response.Redirect("AlisVeris.aspx");
        }
        protected void btnlistele_Click(object sender, EventArgs e)
        {

        }
    }
}