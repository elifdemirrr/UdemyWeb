﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class OgrenciSil : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			int id = Convert.ToInt32(Request.QueryString["OgrId"].ToString());
			DataSetTableAdapters.TblOgrenciTableAdapter dt =
		   new DataSetTableAdapters.TblOgrenciTableAdapter();
			dt.OgrenciSil(id);
			Response.Redirect("Default.aspx");
		}
	}
}