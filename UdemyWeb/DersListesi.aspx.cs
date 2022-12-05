using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DersListesi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblDerslerTableAdapter dt = new DataSetTableAdapters.TblDerslerTableAdapter();
			Repeater1.DataSource = dt.DersListesi();
			Repeater1.DataBind();
		}
	}
}