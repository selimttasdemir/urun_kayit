using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace urun_kayit
{
    public partial class OdemeSayfasi : System.Web.UI.Page
    {
        protected void btnSatinAl_Click(object sender, EventArgs e)
        {
            lblSonuc.Text = "Ödeme Başarılı";
        }
    }
}