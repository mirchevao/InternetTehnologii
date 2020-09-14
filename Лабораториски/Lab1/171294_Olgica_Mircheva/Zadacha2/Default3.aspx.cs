using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Default3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void proveri(object sender, EventArgs e)
        {
            if(txtLozinka.Text == "мрежно програмирање")
            {
                txtPoraka.Enabled = true;
                txtPoraka.Focus();
                btnPrvaStrana.Enabled = true;
            } else
            {
                throw new System.InvalidOperationException("Invalid operation");
                btnPrvaStrana.Enabled = false;
            }
        }

        protected void nazad(object sender, EventArgs e)
        {
            Server.Transfer("Default.aspx");
        }
    }
}