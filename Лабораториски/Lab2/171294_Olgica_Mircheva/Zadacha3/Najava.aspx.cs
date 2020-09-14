using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2._3
{
    public partial class Najava : System.Web.UI.Page
    {
        int ViewstateVal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
               // lblObidi.Text = ViewstateVal.ToString();
            }
        }

        protected void submit(object sender, EventArgs e)
        {
            if(txtLozinka.Text == "mp")
            {
                Session["id"] = txtKorisnik.Text;
                Response.Redirect("GlavnaStranica.aspx");
                Session.RemoveAll();
            } else
            {
                if(ViewState["numLogins"] == null)
                {
                    ViewState["numLogins"] = 1;

                    lblObidi.Text = "1";
                } else
                {
                    if (ViewState["numLogins"].ToString() == "3")
                    {
                        btnPodnesi.Enabled = false;
                        lblObidi.Text = "Надминат е бројот на обиди!";
                    }
                    else
                    {
                        ViewstateVal = Convert.ToInt32(ViewState["numLogins"]) + 1;
                        lblObidi.Text = ViewstateVal.ToString();
                        ViewState["numLogins"] = ViewstateVal.ToString();
                        btnPodnesi.Enabled = true;
                    }
                    
                }
            }
        }
    }
}