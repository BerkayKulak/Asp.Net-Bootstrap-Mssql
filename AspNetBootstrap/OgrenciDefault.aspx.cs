using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetBootstrap
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Textbox1.Text = Session["NUMARA"].ToString();

            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
        
            Textbox2.Text = "Ad Soyad: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRAD +' ' +dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSOYAD;
            Textbox3.Text = "Mail: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRMAIL;
            TextBox4.Text = "Sifre: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;
            TextBox5.Text = "Telefon: " +dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRTELEFON;
            TextBox6.Text = "Fotograf: " + dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRFOTOGRAF;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncele2.aspx?NUMARA=" + Textbox1.Text);
        }
    }
}