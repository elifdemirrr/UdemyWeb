using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DersEkle : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnDersOlustur_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblDerslerTableAdapter dt = new DataSetTableAdapters.TblDerslerTableAdapter();
			dt.DersEkle(txtDers.Text);
			Response.Redirect("DersListesi.aspx");
		}
	}
}