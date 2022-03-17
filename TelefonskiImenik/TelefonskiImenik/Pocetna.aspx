<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pocetna.aspx.cs" Inherits="TelefonskiImenik.Pocetna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Imenik</title>
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
            <div id="pretraga-forma">
                <p>Parametri za pretragu</p>
                <table id="pretraga-tabela">
                    <tr>
                        <td><p>Ime:</p></td>
                        <td><asp:TextBox ID="ImeTextBox" runat="server"></asp:TextBox></td>
                        <td><p>Adresa:</p></td> 
                        <td><asp:TextBox ID="AdreaTextBox" runat="server"></asp:TextBox></td>
                        <td><p>Telefon:</p></td>
                        <td><asp:TextBox ID="TelefonTextBox" runat="server"></asp:TextBox></td>
                        <td rowspan="2"><asp:Button ID="TraziButton" runat="server" Text="Trazi" OnClick="TraziButton_Click" /></td>
                    </tr>
                    <tr>
                        <td><p>Prezime:</p></td>
                        <td><asp:TextBox ID="PrezimeTextBox" runat="server"></asp:TextBox></td>
                        <td><p>Mesto:</p></td>
                        <td><asp:DropDownList ID="MestoDropDownList" runat="server"></asp:DropDownList></td>
                        <td><p>Email:</p></td>
                        <td><asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                <hr />
            </div>
            <div id="rezultat">
                <asp:Panel ID="TabelaPodaciPanel" runat="server"></asp:Panel>
            </div>
        </main>
        <nav>
            <div>
                <p>Elektrotehnicka skola "Nikola Tesla" Nis</p>
            </div>
            <div>
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OAutoru.aspx">O autoru</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Uputstvo.aspx">Uputstvo</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/VazniTelefoni.aspx">Vazni telefoni</asp:HyperLink></li>
                </ul>
            </div>
        </nav>
    </form>
</body>
</html>
