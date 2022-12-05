using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DuyuruGuncelle : System.Web.UI.Page
	{
		int id;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
				DataSetTableAdapters.TblDuyurularTableAdapter dt = 
					new DataSetTableAdapters.TblDuyurularTableAdapter();
				
				txtDuyuruId.Text = id.ToString();
				txtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DuyuruBaslik;
				TextArea1.Value = dt.DuyuruSec(id)[0].DuyuruIcerik;

			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblDuyurularTableAdapter dt =
				new DataSetTableAdapters.TblDuyurularTableAdapter();
			dt.DuyuruGuncelle(txtDuyuruBaslik.Text, TextArea1.Value.ToString()
				,Convert.ToInt32(txtDuyuruId.Text));
			Response.Redirect("DuyuruListesi.aspx");
		}
	}
}