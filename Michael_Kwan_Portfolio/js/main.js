$(document).ready(function(){

    $("#menu_icon").click(function(){
    $("header nav ul").toggleClass("show_menu");
    $("#menu_icon").toggleClass("close_menu");
    return false;
    });

    
    var hw = $('header').width() + 55;
    var mw = $('#map').width();
    var wh = $(window).height();
    var ww = $(window).width();

    $('#map').css({
    "max-width" : mw,
    "height" : wh
    });

    if(ww>1200){
    $('#map').css({
    "margin-left" : hw
    });
    }

    $("a").mouseover(function(){

    var attr_title = $(this).attr("data-title");
    if( attr_title == undefined || attr_title == "") return false;
    $(this).after('<span class="tooltip"></span>');

    var tooltip = $(".tooltip");
    tooltip.append($(this).data('title'));

    var tipwidth = tooltip.outerWidth();
    var a_width = $(this).width();
    var a_hegiht = $(this).height() + 2 + 3;

    if(tipwidth < a_width){
    tipwidth = a_width;
    $('.tooltip').outerWidth(tipwidth);
    }

    var tipwidth = '-' + (tipwidth - a_width)/2;
    $('.tooltip').css({
    'left' : tipwidth + 'px',
    'bottom' : a_hegiht + 'px'
    }).stop().animate({
    opacity : 1
    }, 250);
       

    });

    $("a").mouseout(function(){
    var tooltip = $(".tooltip");       
    tooltip.remove();
    });


    });





