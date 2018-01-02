$(document).ready(function() {
  $('#ShowProduct').click(function(e) {
    var a = document.getElementById("Product");
    var b =document.getElementById("Project");
    var c = document.getElementById("ShowProduct");
    var d = document.getElementById("ShowProject");

    a.style.display = "block";
    b.style.display = "none";
    c.style.backgroundColor = "blue";
    d.style.backgroundColor = "white"
    c.style.color = "white";
    d.style.color = "black";
  });
});

$(document).ready(function() {
  $('#ShowProject').click(function(e) {
    var a = document.getElementById("Project");
    var b = document.getElementById("Product");
    var c = document.getElementById("ShowProduct");
    var d = document.getElementById("ShowProject");

      a.style.display = "block";
      b.style.display = "none";
      c.style.backgroundColor = "white";
      d.style.backgroundColor = "blue";
      d.style.color = "white";
      c.style.color = "black";

  });
});


$(".Product").on("click", function() {
  $(this).css("background","red")
});





$(document).ready(function() {
    $('#ShowProductType').click(function(e) {
      var x = document.getElementById("ProductType");
      if (x.style.display == "none") {
        x.style.display = "block";
      } else {
        x.style.display = "none";
      }
    });
});


$(document).ready(function() {
    $('#ShowTechSetification').click(function(e) {
      var y = document.getElementById("TechSetification");
      if (y.style.display == "none") {
        y.style.display = "block";
      } else {
        y.style.display = "none";
      }
    });
});


$(document).ready(function() {
  $('#ShowBrand').click(function(e) {
    var a = document.getElementById("Brand");
    if (a.style.display =="none") {
      a.style.display = "block";
    } else {
      a.style.display = "none";
    }
  });
});


$(document).ready(function() {
  $('#ShowPastSelections').click(function(e) {
    var a = document.getElementById("PastSelections");
    if (a.style.display =="none") {
      a.style.display = "block";
    } else {
      a.style.display = "none";
    }
  });
});


$(document).ready(function() {
  $('#ShowCertifications').click(function(e) {
    var a = document.getElementById("Certifications");
    if (a.style.display =="none") {
      a.style.display = "block";
    } else {
      a.style.display = "none";
    }
  });
});



$(function() {
    $('.Grey').click(function() {
        $(this).find('span').toggleClass('glyphicon glyphicon-triangle-right glyphicon glyphicon-triangle-bottom');
    });
});



$(document).ready(function() {
    $("#slider1").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue1[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue1").change(function() {
        var $this = $(this);
        $("#slider1").slider("values", $this.data("index"), $this.val());
    });
});



$(document).ready(function() {
    $("#slider2").slider({
      range:true,
        min: 0,
        max: 300,
        step: 1,
        values: [10, 200],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue2[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue2").change(function() {
        var $this = $(this);
        $("#slider2").slider("values", $this.data("index"), $this.val());
    });
});



$(document).ready(function() {
    $("#slider3").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue3[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue3").change(function() {
        var $this = $(this);
        $("#slider3").slider("values", $this.data("index"), $this.val());
    });
});



$(document).ready(function() {
    $("#slider4").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue4[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue4").change(function() {
        var $this = $(this);
        $("#slider4").slider("values", $this.data("index"), $this.val());
    });
});



$(document).ready(function() {
    $("#slider5").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue5[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue5").change(function() {
        var $this = $(this);
        $("#slider5").slider("values", $this.data("index"), $this.val());
    });
});

$(document).ready(function() {
    $("#slider6").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue6[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue6").change(function() {
        var $this = $(this);
        $("#slider6").slider("values", $this.data("index"), $this.val());
    });
});


$(document).ready(function() {
    $("#slider7").slider({
      range:true,
        min: 0,
        max: 100,
        step: 1,
        values: [10, 90],
        slide: function(event, ui) {
            for (var i = 0; i < ui.values.length; ++i) {
                $("input.sliderValue7[data-index=" + i + "]").val(ui.values[i]);
            }
        }
    });

    $("input.sliderValue7").change(function() {
        var $this = $(this);
        $("#slider7").slider("values", $this.data("index"), $this.val());
    });
});



//popupwindow

$(function() {
    //----- OPEN
    $('[data-popup-open]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-open');
        $('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);

        e.preventDefault();
    });

    //----- CLOSE
    $('[data-popup-close]').on('click', function(e)  {
        var targeted_popup_class = jQuery(this).attr('data-popup-close');
        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);

        e.preventDefault();
    });
});


$(document).ready(function() {
  $('.item').click(function() {
    console.log($(this).find('#prodId').text());
    window.location.href = "productDetail?pid=" + $(this).find('#prodId').text();
  });
});
