$(document).on("ready", function() {
    $("a#subir").click(function(e) {
        e.preventDefault();
        volver = $(this).attr("href");
        $("html, body").animate({
            scrollTop: $(volver).offset().top
        }, 2000);
    });

    $('#jhonny').flexslider({
        animation: "slide"
    });

    $(".boxer").boxer({
        fixed: true
    });

    //This con clases ejemplo:$(".content_menu_item",this).removeClass("bandera");
    var altura = $("#menu").offset().top;
    $(window).on('scroll', function() {
        if ($(window).scrollTop() > altura) {
            $('#menu').addClass('menu-fixed back_logo2');
        } else {
            $('#menu').removeClass('menu-fixed back_logo2');
        }
    });

    $("#boton_inicio").on("click", function() {
        window.location.href = "index.php";
    });

    $("#agenda_ivss").dataTable({
        "processing": true
    });
    /*Fin evento ready*/
});