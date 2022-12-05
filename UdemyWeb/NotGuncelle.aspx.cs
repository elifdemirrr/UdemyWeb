using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class NotGuncelle : System.Web.UI.Page
	{
		int notid;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack) {

				notid = Convert.ToInt32(Request.QueryString["NotId"].ToString());
				DataSetTableAdapters.OgrrNotlarTableAdapter dt = new DataSetTableAdapters.OgrrNotlarTableAdapter();
				txtOgrId.Text = dt.NotGetir2(notid)[0].OgrenciiId.ToString();
				txtSinav1.Text = dt.NotGetir2(notid)[0].Sınav1.ToString();
				txtSinav2.Text = dt.NotGetir2(notid)[0].Sınav2.ToString();
				txtSinav3.Text = dt.NotGetir2(notid)[0].Sınav3.ToString();
				txtOrtalama.Text = dt.NotGetir2(notid)[0].Ortalama.ToString();
				txtDurum.Text = dt.NotGetir2(notid).ToString();
				txtOgrAdSoyad.Text = dt.NotGetir2(notid)[0].OGRENCIADSOYAD.ToString();
				txtDersAdı.Text = dt.NotGetir2(notid)[0].DersAd.ToString();
			}
		 
		}

		protected void btnHesapla_Click(object sender, EventArgs e)
		{		
			double ort, sinav1, sinav2, sinav3;
		
			sinav1 = Convert.ToInt32(txtSinav1.Text);
			sinav2 = Convert.ToInt32(txtSinav2.Text);
			sinav3 = Convert.ToInt32(txtSinav3.Text);
			ort = (sinav1 + sinav2 + sinav3) / 3;
			txtOrtalama.Text = ort.ToString("0.00");

			if (ort <= 60)
			{
				txtDurum.Text = "False";
			}
			else
			{
				txtDurum.Text = "True";
			}
			
		}
		protected void btnGuncelle_Click(object sender, EventArgs e)
		{
			notid = Convert.ToInt32(Request.QueryString["NotId"].ToString());
			DataSetTableAdapters.OgrrNotlarTableAdapter dt = new DataSetTableAdapters.OgrrNotlarTableAdapter();
			dt.NotGuncelle(byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text), byte.Parse(txtSinav3.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text), notid);
			Response.Redirect("NotListesi.aspx");
		}
	}
}