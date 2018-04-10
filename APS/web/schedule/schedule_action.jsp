<%@page contentType="application/json" pageEncoding="UTF-8"%>

<%
    String action = request.getParameter("action");
    switch (action) {
        case "retrieve_especialidades": retrieve_especialidades(); break;
        case "retrieve_medicos": retrieve_medicos(); break;
    }
%>

<%!
public void  retrieve_especialidades() {

}

public void retrieve_medicos() {%><%
    String especialidade = request.getParameter("especialidade");
    /*
        Query do banco vai retornar um Result Set, esse result tem que ser convertido para JSON
        utilizando a lib JSONObject como declarado abaixo. E depois, é feito o out.write desse JSON.
    */
    %><%!
}
%>

<%JSONObject JSON = (JSONObject) JSONValue.parse("{'especialidade':{'0':'Acupuntura','1':'Angiologia','2':'Cardiologia','3':'ClínicaGeral','4':'Dermatologia','5':'Gastroentereologia','6':'Geriatria','7':'Ginecologia','8':'Neurologista','9':'Nutricionista','10':'Obstetrícia','11':'Pediatra','12':'Psiquiatra'}}");

%>