// JavaScript Document
$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
    $('input').attr('autocomplete', 'off');
    
    $('form').keypress(keypressHandler);
    $(".numeric").numeric();
    var ua = navigator.userAgent;
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini|Mobile|mobile/i.test(ua)) {
        $(".numeric").each(function () {
            $(this).attr("type", "number");
        });
    }
    /**CSS for Safari and IE browser **/
    if (navigator.userAgent.search("Safari") >= 0 && navigator.userAgent.search("Chrome") < 0) {
        $('select').css({ 'margin-left': '0px' });
    }
    if (navigator.userAgent.indexOf('MSIE') !== -1 || navigator.appVersion.indexOf('Trident/') > 0) {
        isIE = true;
        $('select').css({ 'margin-left': '-2px' });
    }
    function disableBack() { /*window.history.forward()*/ }

    window.onload = disableBack();
    window.onpageshow = function (evt) { if (evt.persisted) disableBack() }
    /**Safari browser option uppercase**/
    $(function (e) {
        $('.ic__month-select option').each(function () {
            $(this).html($(this).html().toUpperCase())
        });
    });

    /****Focused for form-field Selected wrapper***/
    $('.fields-wrapper-sel > *')
        .focus(function () {          
            
            $(this).closest('.fields-wrapper-sel').addClass('focused');
        })
        .blur(function () {
            $('.fields-wrapper-sel').removeClass('focused');
        });


    $('.checkbox > *, .radio > *')
        .focus(function () {            
            $(this).closest('label').css({
                "border-color": "#ff9900",
                "border-width": "1px", "outline": "none",
                "border-style": "solid"
            });
        })
        .blur(function () {
            $(this).closest('label').css({
                "border-color": "#d0d3d4",
                "border-width": "1px", "outline": "none",
                "border-style": "solid"
            });
        });

    $(".custom-select").each(function () {
        $(this).wrap("<span class='select-wrapper'></span>");
        $(this).after("<span class='holder'></span>");
    });
    $(".custom-select").change(function () {
        var selectedOption = $(this).find(":selected").text();
        $(this).next(".holder").text(selectedOption);
    }).trigger('change');

    /****Focuse for form-field wrapper***/
    $('.fields-wrapper > *')
        .focus(function () {
            $(this).parent().addClass('focused');
        })
        .blur(function () {
            $('.fields-wrapper').removeClass('focused');
        });

    $(".navbar-toggle").click(function () {
        if ($(this).hasClass("active")) {
            $(this).html('<span class="sr-only">Toggle navigation</span><span aria-hidden="true" class="close-toggle"></span>');
        } else {
            $(this).html('<span class="sr-only">Toggle navigation</span>' +
              '<span class="icon-bar"></span>' +
              '<span class="icon-bar"></span>' +
              '<span class="icon-bar"></span>');
        }
    });

    /*datepicker code starts here */
    if ($('.datePicker').length > 0) {
        $('.datePicker').datepicker({
            format: 'mm/dd/yyyy',
            endDate: new Date(),
            todayHighlight: true
        });
    }

    $('#polyglotLanguageSwitcher').polyglotLanguageSwitcher({
        effect: 'fade',
        testMode: true,
        onChange: function (evt) {

            url = "../Home?cd=" + evt.selectedItem;
            window.location.href = url;
        }
        //               
    });
});


/*datepicker code ends here */


/*** Incident Page1 Checkbox select Toggle***/
$('input[type="checkbox"]').click(function () {
    if ($(this).attr("value") == "theft-damage") {
        $(".theft-damage").slideToggle("slow");
    }
    if ($(this).attr("value") == "damage-pers-effect") {
        $(".damage-pers-effect").slideToggle("slow");
    }

});


/*** Incident-Details Page2 Radio Button Toggle***/
/*Were the police/authorities notified?:*/
$('input[name=police-b1]').click(function () {
    if (this.id == "authority-notify") {
        $(".show-notify").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();
    } else {
        $(".show-notify").hide('slow');
    }

});

/*Were other vehicles involved?*/
$('input[name=other-vehicles]').click(function () {
    if (this.id == "vehicles-involve") {
        $(".show-vehicles-involve").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();

    } else {
        $(".show-vehicles-involve").hide('slow');
    }
});

/*** Insurance Details Page 1 Radio Button Toggle***/
/*Regarding my Personal Auto Insurance:*/
$('input[name=auto-insurance]').click(function () {
    if (this.id == "personal-insurance") {
        $(".show-personal-insurance").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();
    } else {
        $(".show-personal-insurance").hide('slow');
    }
});


/** Regarding my Business Auto Insurance**/
$('input[name=busin-insurance]').click(function () {
    if (this.id == "business-insurance") {
        $(".show-business-insurance").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();
    } else {
        $(".show-business-insurance").hide('slow');
    }
});


/*** Insurance Details Page 2 Radio Button Toggle***/
/*Regarding the Rental Car Driver:*/
$('input[name=rental-car-drv]').click(function () {
    if (this.id == "rental-car-driver") {
        $(".show-rental-car-driver").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();
    } else {
        $(".show-rental-car-driver").hide('slow');
    }
});

/*Regarding the Driver's Auto Insurance::*/
$('input[name=driver-auto-insurance]').click(function () {
    if (this.id == "driver-insurance-reg") {
        $(".show-driver-insurance-reg").slideToggle('slow');
        $(this).toggleAttr('checked');
        $(this).blur();
    } else {
        $(".show-driver-insurance-reg").hide('slow');
    }
});


/*** toggleAttr Plugin ***/
jQuery.fn.toggleAttr = function (attr) {
    return this.each(function () {
        var $this = $(this);
        if ($this.attr(attr)) {
            $this.removeAttr(attr);
        } else {
            $this.attr(attr, attr);
        }
    });
};


/*** Modal Dialog Vertical Middle****/
$(function () {
    function reposition() {
        var modal = $(this),
            dialog = modal.find('.modal-dialog');
        modal.css('display', 'block');

        // Dividing by two centers the modal exactly, but dividing by three 
        // or four works better for larger screens.
        dialog.css("margin-top", Math.max(0, ($(window).height() - dialog.height()) / 2));
    }
    // Reposition when a modal is shown
    $('.modal').on('show.bs.modal', reposition);
    // Reposition when the window is resized
    $(window).on('resize', function () {
        $('.modal:visible').each(reposition);
    });
});


/****Focuse for form-field wrapper***/
$('.fields-wrapper > *')
    .focus(function () {
        $(this).parent().addClass('focused');
    })
    .blur(function () {
        $('.fields-wrapper').removeClass('focused');
    });



function keypressHandler(e) {
    if (e.which == 13) {
        e.preventDefault();
        $(this).blur();
        $('#btnSave').focus().click();
        $('#btnProceed').focus().click();
    }
}
