function soma(num1, num2, num3, res)
{
    alert("Informe apenas numero inteiros");

    var num1 = prompt("Informe o primeiro numero: ");
    num1 = parseInt(num1);

    var num2 = prompt("Informe o segundo numero: ");
    num2 = parseInt(num2);

    var num3 = prompt("Informe o terceiro numero: ");
    num3 = parseInt(num3);

    var res = (num1 + num2 + num3);

    mensagem = ("A soma dos tres numeros inteiros = " + res);
    alert(mensagem);
}