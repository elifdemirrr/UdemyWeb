using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class OgrenciGuncelle2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			TextBox1.Text = Request.QueryString["OgrNumara"];
			if (!IsPostBack)
			{

			}

		}

		protected void Button1_Click(object sender, EventArgs e)
		{


			//DataSetTableAdapters.TblOgrenciTableAdapter dt = new DataSetTableAdapters.TblOgrenciTableAdapter();
			//dt.UpdateQuery();
			//Response.Redirect("OgrenciDefault.aspx?OgrNumara=" + TextBox1.Text);
		}
	}
}