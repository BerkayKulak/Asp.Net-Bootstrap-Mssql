using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace AspNetBootstrap
{
    public partial class Grafikler : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=UdemySiteDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sorgu 1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Chart9.Series["Dersler"].Points.AddXY(Convert.ToString(dr[0]),int.Parse(dr[1].ToString()));
            }
            baglanti.Close();


            baglanti.Open();
            //Sorgu 2
            SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);
            SqlDataReader dr2 = komut.ExecuteReader();
            while (dr2.Read())
            {
                Chart8.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
            }
            baglanti.Close();


            baglanti.Open();
            //Sorgu 3
            SqlCommand komut3 = new SqlCommand("Execute Graf3", baglanti);
            SqlDataReader dr3= komut.ExecuteReader();
            while (dr3.Read())
            {
                Chart7.Series["DersAd"].Points.AddXY(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
            }
            baglanti.Close();


            baglanti.Open();
            //Sorgu 4
            SqlCommand komut4 = new SqlCommand("Execute Graf4", baglanti);
            SqlDataReader dr4 = komut.ExecuteReader();
            while (dr4.Read())
            {
                Chart6.Series["Notlar"].Points.AddXY(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
            }
            baglanti.Close();




        }
    }
}