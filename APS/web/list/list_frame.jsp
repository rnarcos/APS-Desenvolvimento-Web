<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String action = "listar";
    print_header();
    listar_consultas();
    print_footer();
%>
<%!
public void print_header() {%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clínica Médica</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/nav.css">
        <link rel="stylesheet" href="/css/formstyle.css">
        <script type="text/javascript" src="/js/nav.js"></script>
    </head>
    <body>
          <div id="mySidenav" class="sidenav">
            <span id="currentNav">Listar Consultas</span>
            <a href="/index.html">Home</a>
            <a href="/schedule/schedule_frame.jsp">Agendar Consulta</a>
            <a href="/list/list_frame.jsp" class="_disabled">Listar Consultas</a>
        </div>
        <div id ="title">
            <span id="navButton" onclick="toggleNav()">&#9776; Menu</span>
            <span class="companyName">Clínica Médica</span>
        </div>
        <div id="main"><%!
}

public void listar_consultas() {
    

}

public void print_footer() {%>
        </div>
    </body>
</html><%!
}

public String ifOk(String first_value, String second_value) {
    if (first_value == null || first_value.equals("") || first_value.length() < 1) {
        return second_value;
    }
    return first_value;
}
%>