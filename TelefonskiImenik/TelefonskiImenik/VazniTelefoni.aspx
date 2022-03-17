<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VazniTelefoni.aspx.cs" Inherits="TelefonskiImenik.VazniTelefoni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vazni telefoni</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div>
                <p>Zadatak 6</p>
            </div>
            <div>
                <p>Telefonski imenik</p>
            </div>
        </header>
        <main>
            <h1>Vazni telefoni</h1>
            <div id="vazni-telefoni">
                <ul>
                    <li>192 - Policija</li>
                    <li>193 - Vatrogasci</li>
                    <li>194 - Htina pomoc</li>
                    <li>195 - Tacno vreme</li>
                    <li>197 - Pomoc na putu</li>
                </ul>
            </div>
        </main>
        <nav>
            <div>
                <p>Elektrotehnicka skola "Nikola Tesla" Nis</p>
            </div>
            <div>
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pocetna.aspx">Imenik</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Uputstvo.aspx">Uputstvo</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/OAutoru.aspx">O autoru</asp:HyperLink></li>
                </ul>
            </div>
        </nav>
    </form>
</body>
</html>
