<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.UsuarioVo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuarios</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #0f74b3;
            color: white;
            padding: 10px;
            text-align: center;
        }

        .container {
            margin: 20px;
            max-width: 500px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
        }

        form {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
            width: 100%;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"] {
            display: block;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 16px;
            color: #555;
        }

        input[type="submit"] {
            margin-left: 37%;
            background-color: #0e6ca5;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #47b3fa;
        }

        .btn {
            text-align: center;
        }

        .btn a {
            color: #555;
            text-decoration: none;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <header>
        <h1>Facebook</h1>
    </header>
    <div class="container">
        <h1>Editar Usuario</h1>
        <form action="usuario?accion=actualizar" method="post">
            <input type="hidden" name="id1" value="<%= ((model.UsuarioVo) request.getAttribute("usuario")).getIdUs() %>">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre1" value="<%= ((model.UsuarioVo) request.getAttribute("usuario")).getNombre() %>">
            <label for="correo">Correo electrónico:</label>
            <input type="email" name="correo1" value="<%= ((model.UsuarioVo) request.getAttribute("usuario")).getCorreo() %>">
            <label for="correo">Contraseña:</label>
            <input type="password" name="contra1" value="<%= ((model.UsuarioVo) request.getAttribute("usuario")).getContraseña() %>">
            <label for="fecha">Fecha de Modificacion:</label>
            <input type="date" name="fecha1" value="<%= ((model.UsuarioVo) request.getAttribute("usuario")).getFecharegistro() %>">
        
            <input type="hidden" name="opcion2" value="actualizar">
            <input type="submit" value="Guardar cambios">
        </form>
        <div class="btn">
            <a href="pagina?accion=MEf">Volver</a>
        </div>
    </div>
</body>
</html>
