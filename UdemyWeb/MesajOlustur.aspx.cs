using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class MesajOlustur : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			txtGonderen.Text = "101";
		}

		protected void btnGonder_Click(object sender, EventArgs e)
		{
			//DataSetTableAdapters.TblMesajlarTableAdapter dt = new DataSetTableAdapters.TblMesajlarTableAdapter	();
			//dt.MesajGonder(Convert.ToInt32(txtGonderen.Text),Convert.ToInt32(txtAlıcı.Text),txtMesajBaslik.Text, txtMesajIcerik.Value);
			//Response.Redirect("GidenMesajlar.aspx");

		}
	}
}