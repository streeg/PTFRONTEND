function pudim(event){
    console.log("Pudim");
}



$(document).ready( function(){
    $("input[type='button']").on('click', function(){
        var number1 = $("input[name='number1']").val();
        var number2 = $("input[name='number2']").val();

        if(number1 && number2){
            number1 = parseInt(number1);
            number2 = parseInt(number2);
            var result = [
            number1 + number2,
            number1 - number2,
            number1 * number2,
            number1 / number2,
            number1 % number2
            ]
        }

        var tableLines = $("#table").children("tbody").children("tr");
        $(tableLines).each(function(index){
            $(this).append("<td>"+ result[index] +"</td>");
        });
    });
});