<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Ejercicio1.Views.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Ejercicio 1</title>
    <style>
        .card-title{
            color:#FFF;
        }
    </style>
</head>
<body class="bg-dark">
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card bg-dark" style="width: 400px;">
                <div class="card-body">
                    <h2 class="card-title">Create Table</h2>
                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtTableName" runat="server" CssClass="form-control" placeholder="Table Name" Style="width: 100%;"></asp:TextBox>
                        <label for="txtTableName">Table Name</label>
                    </div>
                    <div class="form-floating mb-3">
                        <asp:TextBox ID="txtColumnName" runat="server" CssClass="form-control" placeholder="Column Name (Please separate with commas)" Style="width: 100%;"></asp:TextBox>
                        <label for="txtColumnName">Column Name (Please separate with commas)</label>
                    </div>
                    <div>
                        <asp:Button ID="btnCrearTabla" runat="server" Text="Crear Tabla" OnClick="btnCrearTabla_Click" CssClass="btn btn-primary" />
                    </div>
                    <div>
                        <asp:Label ID="lblMensaje" runat="server" CssClass="form-text text-muted"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
