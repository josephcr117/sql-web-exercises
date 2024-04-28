<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Ejercicio3.Views.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>SQL Drop Tables</title>
</head>
<body class="bg-dark">
    <div class="container">
        <h2 class="mt-5 mb-3 text-light">Drop Table</h2>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="dropDownTable" class="form-label text-light">Select a Table from the list:</label>
                <asp:DropDownList ID="dropDownTable" runat="server" CssClass="form-select bg-dark text-light">
                    <asp:ListItem Text="Select a Table from the list" Value="" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnDropTable" runat="server" Text="Drop Table" OnClick="btnDropTable_Click" CssClass="btn btn-danger"/>
            <div class="mt-3 text-light">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
