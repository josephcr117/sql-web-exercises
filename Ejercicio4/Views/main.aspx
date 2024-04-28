<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Ejercicio4.Views.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>SQL Connection Tester</title>
</head>
<body class="bg-dark">
    <div class="container">
        <h2 class="mt-5 mb-3 text-light">SQL Connection Tester</h2>
        <div class="card bg-dark text-light">
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="mb-3">
                        <label for="txtServer" class="form-label">Server:</label>
                        <input type="text" id="txtServer" class="form-control" runat="server" />
                    </div>
                    <div class="mb-3">
                        <label for="txtDb" class="form-label">Data Base:</label>
                        <input type="text" id="txtDb" class="form-control" runat="server" />
                    </div>
                    <asp:Button ID="btnTestConnection" runat="server" Text="Probar Conexión" OnClick="btnTestConnection_Click" CssClass="btn btn-primary" />
                    <div class="mt-3">
                        <asp:Label ID="lblMsg" runat="server" CssClass="text-muted"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
