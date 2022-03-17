using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace TelefonskiImenik
{
    public class Osoba
    {
        public int Rbr { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string Ulica { get; set; }
        public string Telefon { get; set; }
        public string Mail { get; set; }
        public string Grad { get; set; }

        public Osoba(int rbr, string ime, string prezime, string ulica, string telefon, string mail, string grad)
        {
            Rbr = rbr;
            Ime = ime;
            Prezime = prezime;
            Ulica = ulica;
            Telefon = telefon;
            Mail = mail;
            Grad = grad;
        }

        public static Osoba fromString(string input)
        {
            string[] fields = input.Split('|');
            return new Osoba(Convert.ToInt32(fields[0]), fields[1], fields[2], fields[3], fields[4], fields[5], fields[6]);
        }

        public HtmlTableRow getRow()
        {
            HtmlTableRow row = new HtmlTableRow();
            row.Controls.Add(new HtmlTableCell() { InnerText = Rbr.ToString() });
            row.Controls.Add(new HtmlTableCell() { InnerText = Ime });
            row.Controls.Add(new HtmlTableCell() { InnerText = Prezime });
            row.Controls.Add(new HtmlTableCell() { InnerText = Ulica });
            row.Controls.Add(new HtmlTableCell() { InnerText = Telefon });
            row.Controls.Add(new HtmlTableCell() { InnerText = Mail });
            row.Controls.Add(new HtmlTableCell() { InnerText = Grad });

            return row;
        }
    }
}