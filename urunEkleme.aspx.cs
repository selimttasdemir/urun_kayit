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
    public partial class urunEkleme : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["veritabanıBaglantisi"].ConnectionString);
        SqlCommand komut;
        DataSet ds;


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "Server=.;Database=urunKayitListeleme;Integrated Security = True";


            byte[] myimage = new byte[FileUpload1.PostedFile.ContentLength];
            HttpPostedFile Image = FileUpload1.PostedFile;
            Image.InputStream.Read(myimage, 0, (int)FileUpload1.PostedFile.ContentLength);


            string sorgu = "insert into urunler (anakategori, altkategori,urunad,fiyat,agirlik,gonderilensehir,aliciNumara,image) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";
            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            ds = new DataSet();
            komut.Parameters.AddWithValue("@p1", Request.Form["anaKategori"]);
            komut.Parameters.AddWithValue("@p2", Request.Form["altKategori"]);
            komut.Parameters.AddWithValue("@p3", txtAd.Text);
            komut.Parameters.AddWithValue("@p4", txtFiyat.Text);
            komut.Parameters.AddWithValue("@p5", txtAgirlik.Text);
            komut.Parameters.AddWithValue("@p6", txtSehir.Text);
            komut.Parameters.AddWithValue("@p7", txtNumara.Text);
            komut.Parameters.Add("@p8", SqlDbType.Image, myimage.Length).Value = myimage;

            baglanti.Open();
            komut.ExecuteNonQuery();
            Response.Write("Kayıt Eklendi");
            baglanti.Close();

        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {

        }
    }
}