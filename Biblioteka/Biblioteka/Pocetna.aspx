<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="Biblioteka.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Biblioteka | Pocetna</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Korisnici]"></asp:SqlDataSource>
        <header>
            <div><h1>Biblioteka</h1></div>
            <nav>
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pocetna.aspx">Pocetna</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pregled.aspx">Pregled</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/OAutoru.aspx">O autoru</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Uputstvo.aspx">Uputstvo</asp:HyperLink></li>
                </ul>
            </nav>
        </header>
        <main>
            <div id="nalozi">
                <h3>Mozete se logovati sa sledecim nalozima:</h3>
                <asp:Panel ID="naloziDisplay" runat="server"></asp:Panel>
            </div>
            <hr />
            <div id="logovanje">
                <asp:PlaceHolder ID="loginFormPlaceholder" runat="server">
                    <p>Unesite parametre za logovanje. <a href="#">Registrujte se</a> ako nemate nalog</p>
                    <fieldset id="loginForm">
                    <legend>Forma za logovanje</legend>
                    <label>Korisnicko ime:</label><br />
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                    <label>Lozinka:</label><br />
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </fieldset>
                <asp:Button ID="btnLogin" runat="server" Text="Prijava" OnClick="btnLogin_Click"/>
                </asp:PlaceHolder>
            </div>
        </main>
    </form>
</body>
</html>
