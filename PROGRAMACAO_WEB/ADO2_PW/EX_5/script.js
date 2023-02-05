function soma(num1 , num2)
{
    var num1 = prompt("Informe o primeiro numero: ");
    var num2 = prompt("Informe o segundo numero: ");
    num1 = parseFloat(num1);
    num2 = parseFloat(num2);
    var res = num1 + num2

    mensagem = ("A soma dos dois numeros = "  + res);
    alert(mensagem);
}