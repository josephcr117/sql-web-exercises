<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Ejercicio2.Views.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>SQL Verifier</title>
</head>
<body class="bg-dark">
    <div class="container">
        <h2 class="mt-5 mb-3 text-white">Verificador de Query SQL</h2>
        <div class="row">
            <div class="col-md-8">
                <div class="card bg-dark text-white">
                    <div class="card-body">
                        <form id="form1" runat="server">
                            <div class="mb-3">
                                <label for="txtQuery" class="form-label">Insert your SQL Query:</label>
                                <textarea id="txtQuery" class="form-control" rows="4" runat="server"></textarea>
                            </div>
                            <asp:Button ID="btnRunQuery" runat="server" Text="Run Query" OnClick="btnRunQuery_Click" CssClass="btn btn-primary" />
                            <div class="mt-3">
                                <asp:Label ID="lblResult" runat="server" Text="" CssClass="text-white"></asp:Label>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
