using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class zad1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                string[] str = new string[12];
                str[0] = "January";
                str[1] = "Febuary";
                str[2] = "March";
                str[3] = "April";
                str[4] = "May";
                str[5] = "June";
                str[6] = "July";
                str[7] = "August";
                str[8] = "September";
                str[9] = "October";
                str[10] = "November";
                str[11] = "December";

                ddlMesec.DataSource = str;
                ddlMesec.DataBind();

                for (int i = 1; i<=31; i++)
                {
                    ddlDen.Items.Add(Convert.ToInt32(i).ToString());
                }

                for(int i = 2020; i<=2024; i++)
                {
                    ddlGodina.Items.Add(Convert.ToInt32(i).ToString());
                }

                for(int i = 0; i<=2; i++)
                {
                    for(int j = 0; j<=9; j++)
                    {
                        ddlVreme.Items.Add(Convert.ToInt32(i).ToString() + Convert.ToInt32(j).ToString() + ":00");
                        if((Convert.ToInt32(i).ToString() + Convert.ToInt32(j).ToString() + ":00").Equals("23:00"))
                        {
                            break;
                        }
                    }
                }



            }
        }

       

        protected void Podnesi_onClick(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
            lblOd.Text = ddlOd.SelectedItem.Text;
            lblDo.Text = ddlDo.SelectedItem.Text;
            lblVreme.Text = ddlVreme.SelectedItem.Text;
            lblZona.Text = rblZona.SelectedItem.Text;
            lblKlasa.Text = rblKlasa.SelectedItem.Text;

            foreach(ListItem li in cblPosluga.Items){
                if(li.Selected)
                {
                    lblPosluga.Text += li.Text + " ";
                }
            }
            imgSlika.ImageUrl = lstSredstvo.SelectedItem.Value.ToString();
        }
    }
}