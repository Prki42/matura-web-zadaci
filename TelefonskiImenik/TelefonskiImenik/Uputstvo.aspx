<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uputstvo.aspx.cs" Inherits="TelefonskiImenik.Uputstvo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Uputstvo</title>
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
            <h1>Uputstvo</h1>
        </main>
        <nav>
            <div>
                <p>Elektrotehnicka skola "Nikola Tesla" Nis</p>
            </div>
            <div>
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OAutoru.aspx">O autoru</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pocetna.aspx">Pocetna</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/VazniTelefoni.aspx">Vazni telefoni</asp:HyperLink></li>
                </ul>
            </div>
        </nav>
    </form>
</body>
</html>
