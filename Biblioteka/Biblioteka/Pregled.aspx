<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pregled.aspx.cs" Inherits="Biblioteka.Pregled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pregled | Biblioteka</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </main>
    </form>
</body>
</html>
