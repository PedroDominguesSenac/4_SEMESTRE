function media(nota1, nota2, nota3, res)
{
    alert("Utilize .(ponto) para numeros decimais");

    var nota1 = prompt("Informe a primeira nota: ");
    nota1 = parseFloat(nota1);

    var nota2 = prompt("Informe a segunda nota: ");
    nota2 = parseFloat(nota2);

    var nota3 = prompt("Informe a terceira nota: ");
    nota3 = parseFloat(nota3);

    var res = (nota1 + nota2 + nota3) / 3;

    mensagem = ("A media das notas = " + res);
    alert(mensagem);
}