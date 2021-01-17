using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace urun_kayit
{
    public class handler : IHttpHandler
    {

        SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["veritabanıBaglantisi"].ConnectionString);

        SqlCommand komut;

        public void ProcessRequest(HttpContext context)
        {
            baglanti.Open();
            komut = new SqlCommand("select image from urunler where urunID = @id", baglanti);
            komut.Parameters.AddWithValue("@id", context.Request["urunID"]);
            byte[] _bytes = (byte[])komut.ExecuteScalar();
            context.Response.ContentType = "image/jpg";
            context.Response.BinaryWrite(_bytes);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}