using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class OgrenciDefault : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			TextBox7.Text = Session["OgrNumara"].ToString();
				//Request.QueryString["OgrNumara"];
			DataSetTableAdapters.TblOgrenciTableAdapter dt = new DataSetTableAdapters.TblOgrenciTableAdapter();
			TextBox1.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrAd + dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrSoyad;
			TextBox2.Text = "Öğrenci Mail: " +dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrMail;
			TextBox3.Text = "Öğrenci Şifre: "+dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrSifre;
			TextBox4.Text = "Öğrenci Telefon: "+dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrTelefon;
			TextBox5.Text = "Öğrenci Fotograf: "+dt.OgrenciPaneliGetir(TextBox7.Text)[0].OgrFotograf;




		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Response.Redirect("OgrenciGuncelle2.aspx?OgrNumara=" + TextBox7.Text);
		}
	}
}