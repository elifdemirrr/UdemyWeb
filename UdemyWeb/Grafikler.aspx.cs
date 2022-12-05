using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace UdemyWeb
{
	public partial class Grafikler : System.Web.UI.Page
	{
		SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BIR0C2M\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			//sorgu1
			baglanti.Open();
			SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
			SqlDataReader dr = komut.ExecuteReader();
			while (dr.Read())
			{
				Chart3.Series["Dersler"].Points.AddXY(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
			}

			baglanti.Close();
			//sorgu2

			baglanti.Open();
			SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);
			SqlDataReader dr2 = komut2.ExecuteReader();
			while (dr2.Read())
			{
				Chart4.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
			}

			baglanti.Close();

			//sorgu3
			baglanti.Open();
			SqlCommand komut3 = new SqlCommand("Execute Graf3", baglanti);
			SqlDataReader dr3 = komut3.ExecuteReader();
			while (dr3.Read())
			{
				Chart2.Series["DersAd"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
			}

			baglanti.Close();







			//Chart1.Series["Kitap"].Points.AddXY("İstanbul", 4);
			//Chart1.Series["Kitap"].Points.AddXY("Ankata", 12);
			//Chart1.Series["Kitap"].Points.AddXY("Bursa", 5);
			//Chart1.Series["Kitap"].Points.AddXY("İzmir", 8);
			//Chart1.Series["Kitap"].Points.AddXY("Adana", 2);


			//Chart2.Series["Nüfus"].Points.AddXY("Akdeniz", 21);
			//Chart2.Series["Nüfus"].Points.AddXY("Karadeniz", 47);
			//Chart2.Series["Nüfus"].Points.AddXY("Marmara", 43);
			//Chart2.Series["Nüfus"].Points.AddXY("ege", 100);
			//Chart2.Series["Nüfus"].Points.AddXY("Doğu Anadolu", 32);
			//Chart2.Series["Nüfus"].Points.AddXY("Güney Doğu anadolu", 58);
			//Chart2.Series["Nüfus"].Points.AddXY("İç anadolu", 72);


			//Chart3.Series["Dersler"].Points.AddXY("Matematik",77);
			//Chart3.Series["Dersler"].Points.AddXY("Bilgisyaar", 21);
			//Chart3.Series["Dersler"].Points.AddXY("Kodlarama", 45);
			//Chart3.Series["Dersler"].Points.AddXY("Edebiyat", 89);
			//Chart3.Series["Dersler"].Points.AddXY("COĞRAFYA", 61);

			//Chart4.Series["Ogretmen"].Points.AddXY("Matematik",45);
			//Chart4.Series["Ogretmen"].Points.AddXY("Bilgisyaar", 21); 
			//Chart4.Series["Ogretmen"].Points.AddXY("Kodlarama", 45);
			//Chart4.Series["Ogretmen"].Points.AddXY("Edebiyat", 61); 
			//Chart4.Series["Ogretmen"].Points.AddXY("COĞRAFYA", 89);



		}
	}
}