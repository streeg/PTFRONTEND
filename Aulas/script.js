function carroandando() {
    console.log("andando...");
}

var carro = {
    "cor": "vermelho",
    "modelo": "camaro",
    "andar": carroandando
}

var pilha = {
    stack: []
}

function showName(firstName,lastName){
    var nameIntro ="Your name is ";
    function makeFullName(){
        return nameIntro +firstName + " " + lastName;
    }
    return makeFullName();
}

showName("Guilherme", "Monteiro");