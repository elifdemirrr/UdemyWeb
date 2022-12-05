using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class DuyuruEkle : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				DataSetTableAdapters.TblOgretmenTableAdapter dt = new DataSetTableAdapters.TblOgretmenTableAdapter();
				DropDownList1.DataSource = dt.OgretmenListesi();
				DropDownList1.DataTextField = "OgrtAdSoyad";
				DropDownList1.DataValueField = "OgrtId";
				DropDownList1.DataBind();
			}
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblDuyurularTableAdapter dt = new DataSetTableAdapters.TblDuyurularTableAdapter();
			dt.DuyuruEkle(txtDuyuruBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
			Response.Redirect("DuyuruListesi.aspx");
		}
	}
}