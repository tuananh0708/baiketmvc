$("#loai").click(function(){
    $("#bang_loai").show();
    $("#bang_bo").hide();
    $("#bang_don").hide();
});

$("#bo").click(function(){
    $("#bang_loai").hide();
    $("#bang_bo").show();
    $("#bang_don").hide();
});

$("#don").click(function(){
    $("#bang_loai").hide();
    $("#bang_bo").hide();
    $("#bang_don").show();
});