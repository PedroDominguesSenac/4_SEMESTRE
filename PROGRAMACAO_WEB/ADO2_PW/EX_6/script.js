function quadrado(num1)
{
    var num1 = prompt("Informe um numero: ");
    num1 = parseFloat(num1);

    var res = num1 * num1;

    mensagem = ("O quadrado de " + num1 + (" = ")  + res);
    alert(mensagem);
}