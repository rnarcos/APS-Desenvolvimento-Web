function habilitarInputsECarregarMedicos() {
    Array.from(document.getElementById('schedule_form').elements).forEach(item => {
        if (item.id === 'medico') {
            item.selectedIndex = -1;
        }
        item.disabled = '';
    });
    var especialidade = document.getElementById('especialidade').value;
    //var medicosRS = ajaxRequest('GET', '/schedule/schedule_action.jsp?action=list_medicos&especialidade=' + especialidade);
}

function ajaxRequest(method, url) {
    var ajax = new XMLHttpRequest();
    ajax.open(method, url);
    ajax.send();
    return ajax;
}

function refreshOptionsList(selectInput, options) {
    if (Object.keys(options).length !== 1) {
        console.error('Something wasn\'t properly calculated. I got ' + options.length + ' options instead of one!');
        return;
    }
    selectInput.innerHTML = "";
    var optionsArray = [];
    optionsArray = Object.values(options[Object.keys(options)[0]]);
    //console.log(optionsArray);
    optionsArray.forEach(item => {
        let option = document.createElement("option");
        option.value = item;
        option.text = item;
        selectInput.add(option, null);
    });
}

(function() {
    //var especialidadesRS = ajaxRequest('GET', '/schedule/schedule_action.jsp?action=list_especialidades');
    var ajax = new XMLHttpRequest();
    ajax.responseType = 'json';
    ajax.open('GET', '/especialidades.json');
    ajax.onreadystatechange = function() {
        if (ajax.readyState === ajax.DONE) {
            refreshOptionsList(document.getElementById('especialidade'), ajax.response);
        }
    };
    ajax.send();
    
    console.log(ajax);
    
    
    //var especialidadeRequest = ajaxRequest('GET', '/especialidades.json');
    
}());