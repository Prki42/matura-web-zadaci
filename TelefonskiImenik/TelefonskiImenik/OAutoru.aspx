<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OAutoru.aspx.cs" Inherits="TelefonskiImenik.OAutoru" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>O autoru</title>
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
            <h1>O autoru</h1>
        </main>
        <nav>
            <div>
                <p>Elektrotehnicka skola "Nikola Tesla" Nis</p>
            </div>
            <div>
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pocetna.aspx">Imenik</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Uputstvo.aspx">Uputstvo</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/VazniTelefoni.aspx">Vazni telefoni</asp:HyperLink></li>
                </ul>
            </div>
        </nav>
    </form>
</body>
</html>
