using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Diagnostics;

namespace TelefonskiImenik
{
    public partial class Pocetna : System.Web.UI.Page
    {
        private string[] table_headers = new string[] { "Rbr", "Ime", "Prezime", "Adresa", "Telefon", "E-mail", "Mesto" };
        private List<string> gradovi;
        private List<Osoba> osobe;
        protected void Page_Load(object sender, EventArgs e)
        {
            osobe = new List<Osoba>();
            gradovi = new List<string>();
            if (!IsPostBack)
            {
                MestoDropDownList.Items.Add("");
            }

            string baseDir = AppDomain.CurrentDomain.BaseDirectory;
            string filePath = System.IO.Path.Combine(baseDir, "imenik.txt");
            Debug.WriteLine(filePath);
            string[] lines = System.IO.File.ReadAllLines(filePath);
            
            foreach(string line in lines)
            {
                Osoba osoba = Osoba.fromString(line);
                osobe.Add(osoba);
                if (IsPostBack) continue;
                if (!gradovi.Contains(osoba.Grad))
                {
                    MestoDropDownList.Items.Add(osoba.Grad);
                    gradovi.Add(osoba.Grad);
                }
            }

            ispisTabele(osobe);
        }

        private void ispisTabele(List<Osoba> osobe)
        {
            TabelaPodaciPanel.Controls.Clear();
            var table = new HtmlGenericControl("table");
            var tr = new HtmlGenericControl("tr");
            foreach (string header in table_headers)
            {
                var th = new HtmlGenericControl("th");
                th.InnerText = header;
                tr.Controls.Add(th);
            }
            table.Controls.Add(tr);
            foreach(Osoba osoba in osobe)
            {
                var red = osoba.getRow();
                table.Controls.Add(red);
            }
            TabelaPodaciPanel.Controls.Add(table);
        }

        protected void TraziButton_Click(object sender, EventArgs e)
        {
            string ime = ImeTextBox.Text.ToLower();
            string prezime = PrezimeTextBox.Text.ToLower();
            string grad = MestoDropDownList.Text.ToLower();
            string telefon = TelefonTextBox.Text.ToLower();
            string mail = EmailTextBox.Text.ToLower();
            string adresa = AdreaTextBox.Text.ToLower();

            List<Osoba> osobeFilter = osobe.FindAll(o => o.Ime.ToLower().Contains(ime)
                && o.Prezime.ToLower().Contains(prezime)
                && o.Grad.ToLower().Contains(grad)
                && o.Telefon.ToLower().Contains(telefon)
                && o.Mail.ToLower().Contains(mail)
                && o.Ulica.ToLower().Contains(adresa));

            ispisTabele(osobeFilter);
        }
    }
}