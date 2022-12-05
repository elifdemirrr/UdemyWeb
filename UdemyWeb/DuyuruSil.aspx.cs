using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DuyuruSil : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			int id =Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
			DataSetTableAdapters.TblDuyurularTableAdapter dt =new DataSetTableAdapters.TblDuyurularTableAdapter();
			dt.DuyuruSil(id);
			Response.Redirect("DuyuruListesi.aspx");
		}
	}
}