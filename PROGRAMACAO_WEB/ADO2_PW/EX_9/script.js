function area(base, altura)
{
    alert("Vamos calcular a Area de um Triangulo");
    alert("Utilize .(ponto) para numeros decimais");

    var base = prompt("Informe o valor da base do triangulo: ");
    base = parseFloat(base);

    var altura = prompt("Informe o valor da altura do triangulo: ");
    altura = parseFloat(altura);

    var area = (base * altura) / 2;

    mensagem = ("O valor da Area do Triangulo = " + area);
    alert(mensagem);
}