using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetBootstrap
{

    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Ogrenci where NUMARA =@p1 and OGRSIFRE=@p2 ", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("numara", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx") ;
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Ogretmen where OGRTNUMARA =@p1 and OGRTSIFRE=@p2 ", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("ogrtnumara", TxtNumara.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();
        }
    }
}