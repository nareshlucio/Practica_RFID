var mensaje = $("#mensaje");
mensaje.hide();
$("#registro").on("submit", function(e){
    //Evitamos que se envíe por defecto
    e.preventDefault();
    var formData = new FormData(document.getElementById("registro"));
    $.ajax({
        url: "../../Controlador/Registros.php",
        type: "POST",
        dataType: "HTML",
        data: formData,
        cache: false,
        contentType: false,
        processData: false
        }).done(function(echo){
        mensaje.html(echo);
        mensaje.slideDown(500);
    });
});
