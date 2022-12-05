using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DersGuncelle : System.Web.UI.Page
	{
		int id;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				id = Convert.ToInt32(Request.QueryString["DersId"].ToString());
				DataSetTableAdapters.TblDerslerTableAdapter dt =
					new DataSetTableAdapters.TblDerslerTableAdapter();

				txtDersId.Text = id.ToString();
				txtDersAdi.Text = dt.DersGetir(id)[0].DersAd;
	

			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblDerslerTableAdapter dt =
				new DataSetTableAdapters.TblDerslerTableAdapter();
			dt.DersGuncelle(txtDersAdi.Text, Convert.ToInt32(txtDersId.Text));
			Response.Redirect("DersListesi.aspx");
		}
	}
}