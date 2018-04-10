<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clínica Médica</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/nav.css">
        <link rel="stylesheet" href="/css/formstyle.css">
        <script type="text/javascript" src="/js/nav.js"></script>
        <script type="text/javascript" src="js/schedule.js"></script>
    </head>
    <body>
          <div id="mySidenav" class="sidenav">
            <span id="currentNav">Agendar Consulta</span>
            <a href="/index.html">Home</a>
            <a href="/schedule/schedule_frame.jsp" class="_disabled">Agendar Consulta</a>
            <a href="/list/list_frame.jsp">Listar Consultas</a>
        </div>
        <div id ="title">
            <span id="navButton" onclick="toggleNav()">&#9776; Menu</span>
            <span class="companyName">Clínica Médica</span>
        </div>
        <div id="main">
<%
        print_header();
        String especialidade = request.getParameter("especialidade");
        String medico = request.getParameter("medico");
        String paciente = request.getParameter("paciente");
        String data_consulta = request.getParameter("data_consulta");
        String convenio = request.getParameter("convenio");
        out.write("especialidade: " + especialidade + "<br>");
        out.write("medico: " + medico + "<br>");
        out.write("paciente: " + paciente + "<br>");
        out.write("data_consulta: " + data_consulta + "<br>");
        out.write("convenio: " + convenio + "<br>");
        if (especialidade == null) {%>
            <form method="GET" class="form-style-7" id="schedule_form" action="schedule_frame.jsp">
                <ul>
                    <li>
                        <label for="especialidade">Especialidade</label>
                        <select name="especialidade" id="especialidade" required onChange="habilitarInputsECarregarMedicos()">
                            <option value=""/>
                            <option value="Urologista">Urologista</option>
                        </select>
                        <span>Selecione a especialidade da consulta</span>
                    </li>
                    <ul>
                    <li >
                         <label for="medico">Medico</label>
                         <select name="medico" id="medico" required disabled>
                             <option value="Jonas">Jonas</option>
                             <option value="Joseph">Joseph</option>
                         </select>
                         <span>Selecione o nome do Médico</span>
                    </li>
                    <li>
                        <label for="paciente">Paciente</label>
                        <input type="text" name="paciente" id="paciente" required disabled/>
                        <span>Informe o nome do paciente</span>
                    </li>
                    <li>
                        <label for="data_consulta">Data</label>
                        <input type="date" name="data_consulta" id="data_consulta" required disabled/>
                        <span>Informe a data da consulta</span>
                    </li>
                    <li>
                        <label for="convenio">Convenio</label>
                        <input type="text" name="convenio" id="convenio" required disabled/>
                        <span>Informe o convenio</span>
                    </li>
                    <li>
                        <input type="submit" value="Enviar" disabled/>
                    </li>
                </ul>
            </form>
            <%//print_especialidade_form();
        } else if(paciente == null) {%>
            <form method="POST" class="form-style-7" action="schedule_frame.jsp">
                <input type="hidden" name="especialidade" value="especialidade"/>
                <ul>
                    <li>
                         <label for="medico">Medico</label>
                         <select name="medico"id="medico" required>
                             <option value="Jonas">Jonas</option>
                         </select>
                         <span>Selecione o nome do Médico</span>
                    </li>
                    <li>
                        <label for="paciente">Paciente</label>
                        <input type="text" name="paciente" id="paciente" required/>
                        <span>Informe o nome do paciente</span>
                    </li>
                    <li>
                        <label for="data_consulta">Data</label>
                        <input type="date" name="data_consulta" id="data_consulta" required/>
                        <span>Informe a data da consulta</span>
                    </li>
                    <li>
                        <label for="convenio">Convenio</label>
                        <input type="text" name="convenio" id="convenio" required/>
                        <span>Informe o convenio</span>
                    </li>
                    <li>
                        <input type="submit" value="Enviar"/>
                    </li>
                </ul>
            </form>
            <%//print_agendamento_form();
        }%>
        </div>
    </body>
</html>
<%!
public void print_header() {%>
<!--<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/nav.css">
        <link rel="stylesheet" href="/css/formstyle.css">
        <script type="text/javascript" src="/js/nav.js"></script>
    </head>
    <body>
          <div id="mySidenav" class="sidenav">
            <span id="currentNav">Agendar Consulta</span>
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="/index.html">Home</a>
            <a href="/schedule/schedule_frame.jsp" class="_disabled">Agendar Consulta</a>
            <a href="/list/list_frame.jsp">Listar Consultas</a>
        </div>
        <div id ="title">
            <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
            <span class="companyName">Clinica Médica</span>
        </div>
        <div id="main">--><%!
}

public void print_especialidade_form() {%>
            <!--<form class="form-style-7" action="schedule_frame.jsp">
                <ul>
                    <li>
                        <label for="especialidade">Especialidade</label>
                        <select name="especialidade" id="especialidade">
                            <option value="Urologista">Urologista</option>
                        </select>
                        <span>Selecione a especialidade da consulta</span>
                    </li>
                    <li>
                        <input type="submit" value="Enviar" >
                    </li>
                </ul>
            </form>--><%!
}

public void print_agendamento_form() {%>
    <!--<form class="form-style-7" action="schedule_frame.jsp">
        <input type="hidden" name="action" value="agendar"/>
        <input type="hidden" name="especialidade" value="especialidade"/>
        <ul>
            <li>
                 <label for="medico">Medico</label>
                 <select name="medico"id="medico">
                     <option value="Jonas">Jonas</option>
                 </select>
                 <span>Selecione o nome do Médico</span>
            </li>
            <li>
                <label for="paciente">Paciente</label>
                <input type="text" name="paciente" id="paciente"></input>
                <span>Informe o nome do paciente</span>
            </li>
            <li>
                <label for="data_consulta">Data</label>
                <input type="date" name="data_consulta" id="data_consulta"></input>
                <span>Informe a data da consulta</span>
            </li>
            <li>
                <label for="convenio">Convenio</label>
                <input type="text" name="convenio" id="convenio"></input>
                <span>Informe o convenio</span>
            </li>
            <li>
                <input type="submit" value="Enviar" >
            </li>
        </ul>
    </form>--><%!
}

public void print_footer() {%>
        <!--</div>
    </body>
</html>--><%!
}

public String ifOk(String first_value, String second_value) {
    if (first_value == null || first_value.equals("") || first_value.length() < 1) {
        return second_value;
    }
    return first_value;
}
%>