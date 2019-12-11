function loguin(apz) {
    $.ajax({
            url: '../control/validate.php',
            type: 'POST',
            data: { apz: apz },
        })
        .done(function (resultado) {
            $("#acceso").html(resultado);
            console.log(resultado);
        })
}

$(document).on('keyup', '#aprendiz', function () {
    var valorBusqueda = $(this).val();
    if (valorBusqueda != "") {
        loguin(valorBusqueda);
    }
});

