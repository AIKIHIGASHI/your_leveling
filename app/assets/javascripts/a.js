$(function() {
  
  // $('.side-bar').click(function(){
  //   if($('.bar-button').hasClass('off')){
  //     $('.bar-button').removeClass('off');
  //     $('.bar-button').animate({'marginLeft':'400px'},300).addClass('on');
  //   }else{
  //     $('.bar-button').addClass('off');
  //     $('.bar-button').animate({'marginLeft':'0px'},300);
  //   }
  // });


  $(".bar-button").click(function(){
    if($(".side-bar").css("display")=="none"){
      $(".side-bar").animate({width: "show"},100),
      $(".logout").slideDown("slow"),
      $(".bar-button").text("-");
    }
    else
    if($(".side-bar").css("display")=="block"){
      $(".side-bar").animate({width: "hide"},"slow"),
      $(".logout").slideUp("fast"),
      $(".bar-button").text("+");
    }
  });

  

  $(".button_to").click(function(){
    $(".window").slideDown();
  
  });
  


  // $(function(){
  //   $(".side-bar").css("display","none");
  //   $(".bar-button").click(function(){
  //     $(".side-bar").animate({width: "toggle"},"slow");
  //   });
  // });
});