using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
	public partial class İstatistikler : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
			txtBox1.Text = "Toplam Öğrenci Sayısı: " + dt.İstatistik1().ToString();

			TextBox1.Text = "Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();
			TextBox2.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();
			TextBox3.Text = "Matwmatik Sınav1 de en başarılı Öğrenci : " + dt.İstatistik5().ToString();
			TextBox4.Text = "Fizik Sınav1 de en başarılı Öğrenci : " + dt.İstatistik6().ToString();
			TextBox5.Text = "Dil Anlatım Sınav1 de en başarılı Öğrenci : " + dt.İstatistik7().ToString();
			TextBox6.Text = "Edebiyat Sınav1 de en başarılı Öğrenci : " + dt.İstatistik8().ToString();
			TextBox7.Text = "Dil Anlatım Dersi 1.sınav ortalaması : " + dt.İstatistik9().ToString();
			TextBox8.Text = "Matematik Dersi 1.sınav ortalaması  : " + dt.İstatistik10().ToString();
			TextBox9.Text = "Edebiyat Dersi 1.sınav ortalaması  : " + dt.İstatistik11().ToString();
			TextBox10.Text = "Fizik Dersi 1.sınav ortalaması " + dt.İstatistik12().ToString();
			TextBox11.Text = "Matematik Dersinden kalanlar " + dt.İstatistik13().ToString();
			TextBox12.Text = "Matematik Dersinden geçenler " + dt.İstatistik14().ToString();

		}
	}
}