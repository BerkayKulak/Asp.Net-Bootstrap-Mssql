using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetBootstrap
{
    public partial class Grafikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Series["Kitap"].Points.AddXY("İstanbul", 4);
            Chart1.Series["Kitap"].Points.AddXY("Ankara", 8);
            Chart1.Series["Kitap"].Points.AddXY("Bursa", 3);
            Chart1.Series["Kitap"].Points.AddXY("Adana", 7);
            Chart1.Series["Kitap"].Points.AddXY("İzmir", 12);

            Chart2.Series["Nüfus"].Points.AddXY("Akdeniz", 4);
            Chart2.Series["Nüfus"].Points.AddXY("Marmara", 8);
            Chart2.Series["Nüfus"].Points.AddXY("Ege", 3);
            Chart2.Series["Nüfus"].Points.AddXY("Doğu Anadolu", 7);
            Chart2.Series["Nüfus"].Points.AddXY("İç Anadolu", 12);
        }
    }
}