qtdNumLista = int(input('Digite a quantidade de numero(s) que deseja inserir na lista: '))

for i in range(qtdNumLista <= 0):
    qtdNumLista = int(input('**ERRO**' ' Digite a quantidade de numeros que deseja inserir na lista,'
    ' o(s) numero(s) precisa(m) ser inteiro(s) e posito(s): '))

lista = []

while len(lista) < qtdNumLista:
    n = int(input('Digite um numero:'))
    lista.append(n)
print(lista)

numInformado = int(input('Informe o numero que deseja verificar se existe na lista: '))

if numInformado in lista:
    print('O numero: ', numInformado, 'exite na lista')
else:
    print('O numero nao exite na lista')

input()