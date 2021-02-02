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
        SqlConnection baglanti;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
                SqlCommand cmd = new SqlCommand("Select AnaKategori,AltKategori,UrunAd,Fiyat,Agirlik,GonderilenSehir,AliciNumara  from Urunler where UrunId=" + Convert.ToInt32(DropDownList1.SelectedItem.Text) + "", baglanti);
                baglanti.Open();
                //cmd.CommandText = ("Select * From UrunBilgisi");
                cmd.Connection = baglanti;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextArea1.Value = dr["AnaKategori"].ToString();
                    TextArea2.Value = dr["AltKategori"].ToString();
                    TextArea3.Value = dr["UrunAd"].ToString();
                    TextArea4.Value = dr["Fiyat"].ToString();
                    TextArea5.Value = dr["Agirlik"].ToString();
                    TextArea6.Value = dr["GonderilenSehir"].ToString();
                    TextArea7.Value = dr["AliciNumara"].ToString();
                }
                baglanti.Close();
            }
            catch
            {
                Response.Write("Lütfen Girdiğiniz Değerleri Kontrol Ediniz..." +
                "Sorunun düzelmemesi halinde IT Departmanına bildiriniz.");
            }













            //try
            //{
            //    baglanti = new SqlConnection("Server=.;Database=urunKayitListeleme;Integrated Security = True");
            //    cmd = new SqlCommand();
            //    baglanti.Open();
            //    cmd.Connection = baglanti;
            //    cmd.CommandText = ("Select * From Urunler");
            //    dr = cmd.ExecuteReader();
            //    while (dr.Read())
            //    {
            //        DropDownList1.Items.Add(Convert.ToString(dr["UrunId"]));
            //    }
            //    baglanti.Close();
            //}
            //catch
            //{
            //    Response.Write("Lütfen Girdiğiniz Değerleri Kontrol Ediniz..." +
            //        "Sorunun düzelmemesi halinde IT Departmanına bildiriniz.");
            //    //File.Delete(Server.MapPath("~/Resimler2/" + filename));
            //}
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