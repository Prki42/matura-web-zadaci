using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Diagnostics;

namespace Biblioteka
{
    public partial class Default : System.Web.UI.Page
    {

        List<Nalog> nalozi;
        protected void Page_Load(object sender, EventArgs e)
        {
            nalozi = new List<Nalog>();
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                Nalog nalog = new Nalog(((string)dv.Table.Rows[i][1]).Trim(), ((string)dv.Table.Rows[i][2]).Trim());
                nalozi.Add(nalog);
            }
            HyperLink2.Enabled = false;
            ispisiNaloge();
        }

        private void ispisiNaloge()
        {
            foreach(Nalog nalog in nalozi)
            {
                var div = new HtmlGenericControl("div");
                var usernameParagraph = new HtmlGenericControl("p");
                var passwordParagraph = new HtmlGenericControl("p");
                usernameParagraph.InnerText = "Korisnicko ime: " + nalog.username;
                passwordParagraph.InnerText = "Lozinka: " + nalog.password;
                div.Controls.Add(usernameParagraph);
                div.Controls.Add(passwordParagraph);
                naloziDisplay.Controls.Add(div);
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var nadjeni = nalozi.FindAll(n => (n.username == txtUsername.Text && n.password == txtPassword.Text));
            if (nadjeni.Count == 1)
            {
                loginFormPlaceholder.Visible = false;
                HyperLink2.Enabled = true;
            }
        }
    }

    public class Nalog
    {
        public string username { get; set; }
        public string password { get; set; }

        public Nalog(string username, string password)
        {
            this.username = username;
            this.password = password;
        }

        public override string ToString()
        {
            return username + " " + password;
        }
    }
}