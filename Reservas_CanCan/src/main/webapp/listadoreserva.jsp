<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="entity.Reserva" %>
<%@ page import="model.ReservaDAO" %>
<%@ page import="util.MySqlDBConexion" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Reservas</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            background-image: url('imagenes/TardeCriolla.png.webp'); /* Ruta a la imagen */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            height: 100vh;
        }
        .container {
            margin-top: 50px;
        }
        .card-header {
            background-color: #007bff;
            color: #fff;
        }
        .table th, .table td {
            text-align: center;
        }
        .table {
            margin-top: 20px;
        }
        .table-responsive {
            margin-top: 30px;
        }
        .btn-action {
            margin-right: 10px;
        }
        .btn-action i {
            margin-right: 5px;
        }
        .btn-danger, .btn-success, .btn-warning, .btn-info {
            color: white;
        }
        .btn-warning {
            background-color: #ffc107;
        }
        .btn-danger {
            background-color: #dc3545;
        }
        .btn-success {
            background-color: #28a745;
        }
        .btn-info {
            background-color: #17a2b8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Listado de Reservas</h2>
            </div>
            <div class="card-body">
                <a href="ServletReserva?accion=nuevo" class="btn btn-success mb-3">
                    <i class="fas fa-plus"></i> Nueva Reserva
                </a>
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Codigo de Reserva</th>
                                <th>Codigo de Usuario</th>
                                <th>Fecha de Reserva</th>
                                <th>Hora de Reserva</th>
                                <th>N° Personas</th>
                                <th>Estado</th>
                                <th>Comentarios</th>
                                <th>Fecha de Registro</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                List<Reserva> lista = (List<Reserva>) request.getAttribute("listaReservas");
                                if (lista != null && !lista.isEmpty()) {
                                    for (Reserva reserva : lista) {
                            %>
                            <tr>
                                <td><%= reserva.getCodReserva() %></td>
                                <td><%= reserva.getCodUsuario() %></td>
                                <td><%= reserva.getFecReserva() %></td>
                                <td><%= reserva.getHoraReserva() %></td>
                                <td><%= reserva.getNumPersonas() %></td>
                                <td><%= reserva.getEstReserva() %></td>
                                <td><%= reserva.getComentReserva() %></td>
                                <td><%= reserva.getFecRegisReserva() %></td>
                                <td>
                                    <a href="ServletReserva?accion=eliminar&id=<%= reserva.getCodReserva() %>" class="btn btn-danger btn-action">
                                        <i class="fas fa-trash"></i> Eliminar
                                    </a>
                                   <c:if test="${reserva.estado_reserva == 'pendiente'}">
                                    <a href="ServletReserva?accion=cambiarEstado&id=<%= reserva.getCodReserva() %>" class="btn btn-warning btn-action">
                                          <i class="fas fa-check-circle"></i> Marcar como Llegó
                                     </a>
                                  </c:if>
                                    <a href="ServletReserva?accion=cancelar&id=<%= reserva.getCodReserva() %>" class="btn btn-success btn-action">
                                        <i class="fas fa-ban"></i> Cancelar Reserva
                                    </a>
                                    <a href="ServletReserva?accion=editar&id=<%= reserva.getCodReserva() %>" class="btn btn-info btn-action">
                                        <i class="fas fa-edit"></i> Editar
                                    </a>
                                </td>
                                <td><%= reserva.getEstReserva() %></td>
                            </tr>
                            <% 
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="7" class="text-center">No hay reservas para mostrar.</td>
                            </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>