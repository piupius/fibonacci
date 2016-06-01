/* Habilita somente números na entrada do usuário */
function SomenteNumero(e) {
    var tecla = (window.event) ? event.keyCode : e.which;

    if ((tecla > 47 && tecla < 58)) return true;
    else {
        if (tecla == 8 || tecla == 0) return true;
        else return false;
    }
}

/* Função que calcula a sequencia */
function calcular() {
    var form = document.getElementById('form');
    var num = form.numero.value;

    if (num.match(/([1-9]+)/)) {
        var lista = 0;
        var quant = parseInt(num);
        var ant = 0;
        var atual = 1;
        var result = 1;
        var zero = 0;

        if (quant == 1) {
            document.write("<br><p>Série de Fibonacci: <br>0</p>");
        } else {
            for (var i = 1; i < quant; i++) {
                lista = lista + result + ", ";
                result = atual + ant;
                ant = atual;
                atual = result;
            }
            document.write("<br><p>Numeros da série de Fibonacci: <br>" + zero + ", " + lista + "</p>");
        }
    } else {
        document.write("<br><p>Valor não aceito.</p><p>Digite um valor maior que zero</p>");
    }
}
