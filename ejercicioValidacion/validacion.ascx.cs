using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejercicioValidacion
{
    public partial class validacion : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int numero = Convert.ToInt32(this.TextBox1.Text[0]);
            int year;
            int month = this.DropDownList1.SelectedIndex + 1;
            string tarjeta = this.TextBox1.Text;
            string numeroNew = "";
            List<int> sumas = new List<int>();
            //List<int> sumatoria = new List<int>();
            if (numero >= 3 || numero <= 6)
            {
                for (int i = 0; i < tarjeta.Length; i++)
                {
                    int valor = Convert.ToInt32(tarjeta.Substring(i, 1));
                    if (i % 2 == 0 || i == 0)
                    {
                        int multiplo = valor * 2;
                        if (multiplo < 9)
                        {
                            sumas.Add(multiplo);
                            numeroNew += multiplo.ToString();

                        }
                        else
                        {
                            multiplo -= 9;
                            sumas.Add(multiplo);
                            numeroNew += multiplo.ToString();

                        }
                    }
                    else
                    {
                        sumas.Add(Convert.ToInt32(tarjeta[i]));
                        numeroNew += valor.ToString();
                    }
                }
                this.Label1.Text = numeroNew;


                int total = 0;
                for (int i = 0; i < numeroNew.Length; i++)
                {
                    total += Convert.ToInt32(numeroNew.Substring(i, 1));
                }
                this.Label1.Text = numeroNew + "\n" + total.ToString();

                if (total % 10 == 0)
                {
                    if(int.TryParse(this.year.Text,out year))
                    {
                        DateTime fechavencimiento = new DateTime(year, month, DateTime.Now.Day);
                        if (fechavencimiento < DateTime.Now)
                        {
                            this.Label1.Text = "Tarjeta valida";
                        }
                        else
                        {
                            this.Label1.Text = "Tarjeta no valida";
                        }
                    }
                    else
                    {
                        this.Label1.Text = "no es una fecha, por favor digita una fecha";
                    }
                }
            }
            else
            {
                this.Label1.Text = "Disculpe peros su tarjeta no esta registrada en uno de los bancos \n" +
                    "que se encuentra en nuestra base de datos";
            }
        }
    }
}