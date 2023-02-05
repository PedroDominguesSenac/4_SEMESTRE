let op, v1, v2, v3;
let texto = "", texto2, b1, b2
let j, l, result, aux
let memory, contador = 0

function soma(valor1, valor2) {
    result = parseFloat(valor1) + parseFloat(valor2);
    return result
}
function sub(valor1, valor2) {
    result = parseFloat(valor1) - parseFloat(valor2);
    return result
}
function multi(valor1, valor2) {
    result = parseFloat(valor1) * parseFloat(valor2);
    return result
}
function divisao(valor1, valor2) {
    result = parseFloat(valor1) / parseFloat(valor2);
    return result
}
function pot(valor1, valor2) {
    result = Math.pow(parseFloat(valor1), parseFloat(valor2));
    return result
}
function raiz(valor1) {
    result = Math.sqrt(valor1).toFixed(1)
    return result
}
function arr(valor1) {
    result = Math.round(valor1)
    return result
}
function mPlus(valor1) {
    memory = parseFloat(valor1)
}
function mSub(valor1) {
    memory = memory - parseFloat(valor1)
}
function MRC() {
    if (contador == 0) {
        return memory
    }
    if (contador == 1) {
        texto2 = " "
        memory = null
    }

}

function init() {

    let btn = document.querySelectorAll(".botoes")
    console.log(btn)
    btn.forEach((i) => {
        function capturarValor(event) {
            let output = document.querySelector(".number")
            let output2 = document.querySelector(".metodos")
            if (event.target.value == "=") {
                if (op == "+") {
                    let cont = soma(b1, b2)
                    texto = cont
                    output.innerHTML = texto
                }
                if (op == "-") {
                    let cont = sub(b1, b2)
                    texto = cont
                    output.innerHTML = texto
                }
                if (op == "X") {
                    let cont = multi(b1, b2)
                    texto = cont
                    output.innerHTML = texto
                }
                if (op == "/") {
                    let cont = divisao(b1, b2)
                    texto = cont
                    output.innerHTML = texto
                }
                if (op == "pot") {
                    let cont = pot(b1, b2)
                    texto = cont
                    output.innerHTML = texto
                    output2.innerHTML = " "
                    if(texto2 == "M+"){
                        output2.innerHTML = texto2
                    }
                }
                if (op == "raiz") {
                    let cont = raiz(b1)
                    texto = cont
                    output.innerHTML = texto
                    output2.innerHTML = " "
                    if(texto2 == "M+"){
                        output2.innerHTML = texto2
                    }
                }
                if (op == "arr") {
                    let cont
                    cont = arr(texto)
                    texto = cont
                    output.innerHTML = texto
                    output2.innerHTML = " "
                    if(texto2 == "M+"){
                        output2.innerHTML = texto2
                    }
                    // b1 = cont
                }
                v1 = result
                b1 = result
            }
            else {
                if (v1 == null) {
                    j = 1
                    v1 = event.target.value

                    if (v1 == "raiz") {
                        console.error("Invalid" + ": You need to specify a valid value")
                        v1 = null
                    }
                    else if (v1 == "pot") {
                        console.error("Invalid" + ": You need to specify a valid value")
                        v1 = null
                    }
                    else if (v1 == "arr") {
                        console.error("Invalid" + ": You need to specify a valid value")
                        v1 = null
                    }
                    else if (v1 == "C") {
                        console.error("Invalid" + ": Already empty")
                    }
                    else if (v1 == "m+") {
                        console.error("Invalid" + ": You need to specify a valid value")
                        v1 = null
                    }
                    else if (v1 == "m-") {
                        console.error("Invalid" + ": You need to specify a valid value")
                        v1 = null
                    }
                    else if (v1 == "mrc") {
                        b1 = memory
                        if (texto != memory) {
                            contador = 0
                            texto = MRC().toString()
                            output.innerHTML = texto
                        }
                        else if (texto == memory) {
                            contador = 1
                            MRC()
                            output2.innerHTML = ""
                            output.innerHTML = ""
                            texto = ""
                            b1 = ""
                        }
                    }
                    else {
                        b1 = v1
                        output.innerHTML = v1
                        texto = v1
                    }
                    console.log("entrou v1")
                }
                else if (v1 != null && l == null) {
                    console.log("entrou v2")
                    v2 = event.target.value
                    if (v2 == "mrc") {
                        op = v2
                        // l = null
                        if (texto != memory) {
                            contador = 0
                            texto = MRC().toString()
                            b1 = memory
                            output.innerHTML = texto
                        }
                        else if (texto == memory) {
                            contador = 1
                            MRC()
                            output2.innerHTML = ""
                            output.innerHTML = ""
                            texto = ""
                            b2 = ""
                            b1 = ""
                        }
                        console.log(memory)
                    }
                    if (v2 == "m+") {
                        op = v2
                        // l = null
                        texto2 = "M+"
                        output2.innerHTML = "M+"
                        mPlus(texto)
                        console.log(memory)
                    }
                    if (v2 == "m-") {
                        op = v2
                        // l = null
                        v1 = null
                        mSub(texto)
                        texto = " "
                        output.innerHTML = texto
                    }
                    if (v2 == "raiz") {
                        op = v2
                        // l = null
                        output2.innerHTML = "raiz"
                    }
                    if (v2 == "arr") {
                        op = v2
                        // l = null
                        output2.innerHTML = "arr"
                    }
                    if (v2 == "C") {
                        b1 = ""
                        b2 = ""
                        texto = " "
                        output.innerHTML = texto
                        // l = null
                        v1 = null
                    }
                    if (v2 == "pot") {
                        op = v2
                        l = v2
                        output2.innerHTML = "pot"
                    }
                    if (v2 == "+" || v2 == "-" || v2 == "X" || v2 == "/") {
                        op = v2
                        l = v2
                        texto = texto + " " + op
                        output.innerHTML = texto
                    }
                    else if (v2 == ".") {
                        texto = texto.concat(v2)
                        if (j == 1) {
                            b1 = b1.concat(v2)
                        }
                        if (j == 2) {
                            b2 = b2.concat(v2)
                        }
                        output.innerHTML = texto
                    }
                    else if (!isNaN(parseInt(v2))) {
                        texto = texto.concat(v2)
                        console.log(v2)
                        if (j == 1) {
                            b1 = b1.concat(v2)
                        }
                        if (j == 2) {
                            b2 = b2.concat(v2)
                        }
                        output.innerHTML = texto
                    }

                }
                else if (v1 != null && l != null) {
                    console.log("entro no v3")
                    j = 2
                    v3 = event.target.value
                    if (v3 == "mrc") {
                        b2 = memory
                        v3 = memory
                        texto = texto.concat(" " + v3)
                        output.innerHTML = texto
                        l = null
                    }
                    else {
                        b2 = v3
                        texto = texto.concat(" " + v3)
                        output.innerHTML = texto
                        l = null
                    }
                }
            }

        }
        i.addEventListener("click", capturarValor)
    })
}

document.addEventListener("DOMContentLoaded", init)