﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DataSetTableAdapters.TblOgrenciTableAdapter dt = new DataSetTableAdapters.TblOgrenciTableAdapter();
			Repeater1.DataSource = dt.OgrenciListesi();
			Repeater1.DataBind();
		}
	}
}