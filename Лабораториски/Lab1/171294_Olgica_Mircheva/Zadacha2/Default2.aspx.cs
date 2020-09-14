using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Soberi_onClick(object sender, EventArgs e)
        {
            int op1 = Convert.ToInt32(txtOperand1.Text);
            int op2 = Convert.ToInt32(txtOperand2.Text);
            lblRezultat.Text = Convert.ToString(op1 + op2);
        }

        protected void chbVidlivo_CheckedChanged(object sender, EventArgs e)
        {
            if(chbVidlivo.Checked)
            {
                pnPanela1.Visible = true;
            } else
            {
                pnPanela1.Visible = false;
            }
        }
    }
}