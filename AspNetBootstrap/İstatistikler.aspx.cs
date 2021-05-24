using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetBootstrap
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            Textbox1.Text ="Toplam Öğrenci Sayısı: " + dt.İstatistik1().ToString();
            Textbox2.Text ="Toplam Öğretmen Sayısı: " + dt.İstatistik2().ToString();
            Textbox3.Text ="Toplam Ders Sayısı: " + dt.İstatistik3().ToString();
            TextBox4.Text ="Matematik Sınav1'e En Başarılı Öğrenci: " + dt.İstatistik4().ToString();
            TextBox5.Text ="Fizik Sınav1'de En Başarılı Öğrenci: " + dt.İstatistik5().ToString();
            TextBox6.Text ="Dil ve Anlatım Sınav1'de En Başarılı Öğrenci: " + dt.İstatistik6().ToString();
            TextBox7.Text ="Edebiyat Sınav1'de En Başarılı Öğrenci: " + dt.İstatistik7().ToString();
            TextBox8.Text ="Matematik sınavı not ortalamaları: " + dt.İstatistik8().ToString();
            TextBox9.Text ="Edebiyat sınavı not ortalamaları: " + dt.İstatistik9().ToString();
            TextBox10.Text ="Fizik sınavı not ortalamaları: " + dt.İstatistik10().ToString();
            TextBox11.Text ="Matematik Dersinden kalan öğrenci sayısı " + dt.İstatistik11().ToString();
        }
    }
}