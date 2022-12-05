using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace UdemyWeb
{
	public partial class LoginPanel : System.Web.UI.Page
	{
		SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BIR0C2M\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True");
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			baglanti.Open();
			SqlCommand komut = new SqlCommand("Select * From TblOgrenci where OgrNumara=@p1 and OgrSifre=@p2", baglanti);
			komut.Parameters.AddWithValue("@p1", txtUsername.Text);
			komut.Parameters.AddWithValue("@p2", txtPassword.Text);
			SqlDataReader dr = komut.ExecuteReader();
			if (dr.Read())
			{
				Session.Add("OgrNumara", txtUsername.Text);
				Response.Redirect("OgrenciDefault.aspx");
			}
			else
			{
				txtPassword.Text = "Hatalı Şifre";
			}
			baglanti.Close();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			baglanti.Open();
			SqlCommand komut = new SqlCommand("Select * From TblOgretmen where OgrtNumara=@p1 and OgrtSifre=@p2", baglanti);
			komut.Parameters.AddWithValue("@p1", txtUsername.Text);
			komut.Parameters.AddWithValue("@p2", txtPassword.Text);
			SqlDataReader dr = komut.ExecuteReader();
			if (dr.Read())
			{
				Session.Add("OgrtNumara", txtUsername.Text);
				Response.Redirect("Default.aspx");
			}
			else
			{
				txtPassword.Text = "Hatalı Şifre";
			}
			baglanti.Close();
		}
	}
}