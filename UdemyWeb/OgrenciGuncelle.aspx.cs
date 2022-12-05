using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class OgrenciGuncelle : System.Web.UI.Page
	{
		int id;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				try
				{
					id = Convert.ToInt32(Request.QueryString["OgrId"].ToString());
					txtOgrId.Text = id.ToString();
					DataSetTableAdapters.TblOgrenciTableAdapter dt = new DataSetTableAdapters.TblOgrenciTableAdapter();
					txtOgrAd.Text = dt.OgrenciSec(id)[0].OgrAd;
					txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OgrSoyad;
					txtOgrTelefon.Text = dt.OgrenciSec(id)[0].OgrTelefon;
					txtOgrMail.Text = dt.OgrenciSec(id)[0].OgrMail;
					txtOgrSifre.Text = dt.OgrenciSec(id)[0].OgrSifre;
					txtOgrFoto.Text = dt.OgrenciSec(id)[0].OgrFotograf;
					//Request.QueryString;Asp.net ile web uygulamalarında linkler üzerinden başka bir sayfaya bilgi göndermeye yarar.
				}
				catch (Exception)
				{

					txtOgrFoto.Text = "Link Girin";
				}
			}
		
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblOgrenciTableAdapter dt = new DataSetTableAdapters.TblOgrenciTableAdapter();
			dt.OgrenciGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrTelefon.Text, txtOgrMail.Text, txtOgrSifre.Text, txtOgrFoto.Text, Convert.ToInt32(txtOgrId.Text));
			Response.Redirect("Default.aspx");
		}
	}
}