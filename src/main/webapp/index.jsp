<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El Diario Minimalista - JSP</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Estilos base incluidos también directamente en el JSP */
        body {
            background-color: #f9f8f4;
            color: #1c1c1c;
            font-family: "Georgia", "Times New Roman", serif;
            line-height: 1.6;
            padding: 2rem 1rem;
        }
    </style>
</head>
<body>

    <%
        String msj = "Este es un mensaje desde el pasado";
        String nombrePeriodico = "El Diario Minimalista";
        String edicion = "Edición #01";
        LocalDate fechaHoy = LocalDate.now();
    %>

    <div class="newspaper-container">
        <header>
            <h1><%= nombrePeriodico %></h1>
            <div class="meta-bar">
                <span><%= edicion %></span>
                <span>Fecha: <%= fechaHoy %></span>
                <span>ITSON - Arquitectura de Software</span>
            </div>
        </header>

        <section class="jsp-banner">
            <strong>Nota destacada (JSP):</strong>
            <%= msj %>
        </section>

        <main>
            <article class="main-article">
                <h2>Las páginas JSP reemplazan al antiguo index.html</h2>
                <p class="author">Por Redacción Central</p>
                <p>
                    Hoy se llevó a cabo la actualización del portal web hacia una arquitectura basada en
                    JavaServer Pages (JSP). Gracias a los bloques de código dinámico, ahora es posible
                    insertar variables de Java directamente dentro del documento HTML de manera sencilla.
                </p>
            </article>

            <section class="columns">
                <article class="card">
                    <h3>Diseño Minimalista</h3>
                    <p>
                        Un periódico básico prioriza la lectura clara, el uso de tipografía serif clásica
                        y una estructura limpia con CSS sin distracciones visuales.
                    </p>
                </article>

                <article class="card">
                    <h3>Código en el Servidor</h3>
                    <p>
                        El contenedor de servlets procesa las expresiones como
                        <code>&lt;%= msj %&gt;</code> antes de enviar el HTML final al navegador del usuario.
                    </p>
                </article>
            </section>
        </main>

        <footer>
            <p>&copy; <%= fechaHoy.getYear() %> <%= nombrePeriodico %> — Generado con JSP</p>
        </footer>
    </div>

</body>
</html>
