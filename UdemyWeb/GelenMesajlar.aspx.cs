using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class GelenMesajlar : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblMesajlarTableAdapter dt = new DataSetTableAdapters.TblMesajlarTableAdapter();
			Repeater1.DataSource = dt.OgretmenGelenMesaj(Convert.ToInt32(Session["OgrtNumara"].ToString()));
			Repeater1.DataBind();
		}
	}
}