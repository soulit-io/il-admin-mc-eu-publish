
var MCMasterScript;

$(document).ready(function () {
    MCMasterScript = new MCMaster();

    //Removes the < > characters from all textareas and textboxes on blur

    $('input, select, textarea').each(function (i, val) {
        $(this).attr('tabindex', i + 1);
    });

    $('input[type=text], textarea').blur(function (e) {
        $(this).val($(this).val().replaceAllString('<', '', false));
        $(this).val($(this).val().replaceAllString('>', '', false));
    });



    //don't allow the user to paste into the date picker
    $(".hasDatepicker").on("paste", function (event) {
        return false;
    }
    );

    $(".hasDatepicker").keydown(function (e) {
        if (window.event)
            key = window.event.keyCode;
        else if (e)
            key = e.which;
        else
            return true;

        if (key == 16)
            isShift = true;

        //If Shift key is down we don't want any value
        if (isShift == true && (key != 9))
            return false;

        if (key == 9)
            return true;
        else
            return false;
    }
       );

    //To Avoid allowing MAX length in all devices.
    var ua = navigator.userAgent;
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini|Mobile|mobile/i.test(ua)) {
        var idMaxLengthMap = {};

        //loop through all input-text and textarea element
        $.each($(':text, textarea, :password'), function () {
            var id = $(this).attr('id'),
                maxlength = $(this).attr('maxlength');

            //element should have id and maxlength attribute
            if ((typeof id !== 'undefined') && (typeof maxlength !== 'undefined')) {
                idMaxLengthMap[id] = maxlength;

                //remove maxlength attribute from element
                $(this).removeAttr('maxlength');

                //replace maxlength attribute with onkeypress event
                $(this).attr('onkeypress', 'if(this.value.length >= maxlength ) return false;');
            }
        });

        //bind onchange & onkeyup events
        //This events prevents user from pasting text with length more then maxlength
        $(':text, textarea, :password').bind('change keyup', function () {
            var id = $(this).attr('id'),
                maxlength = '';
            if (typeof id !== 'undefined' && idMaxLengthMap.hasOwnProperty(id)) {
                maxlength = idMaxLengthMap[id];
                if ($(this).val().length > maxlength) {

                    //remove extra text which is more then maxlength
                    $(this).val($(this).val().slice(0, maxlength));
                }
            }
        });
    }
});


function MCMaster() {
    var self = this;
    self.CancelBtn = $("[id$='btnCancelClaim']");
    self.SaveBtn = $("[id$='btnSave']");
    self.SaveLaterBtn = $("[id$='btnSaveLater']");
    self.BackBtn = $("[id$='btnBack']");
    self.Denial = false;
    self.SaveLaterDenial = false;
    self.init();
}

MCMaster.prototype.init = function () {
    var self = this;

    self.ReplaceWords("[TollFreeNumber]", $("[id*='hdnReplaceTollFreeNumberText']").val(), ".BanamexReplace");
    self.ReplaceWords("[FileAClaimWebsite]", $("[id*='hdnReplaceFileAClaimWebsiteText']").val(), ".BanamexReplace");
    self.ReplaceWords("[EmailAddress]", $("[id*='hdnReplaceEmailAddressText']").val(), ".BanamexReplace");
    // Added TollFreeNumberUSAA on 02/13/2015 for card US4889 
    self.ReplaceWords("[TollFreeNumberUSAA]", $("[id*='hdnReplaceTollFreeNumberUSAAText']").val(), ".BanamexReplace");

    $("#btnCancelClaim").click(function () {
        $("#cancel").modal('show');
    });

    self.BackBtn.click(function (e) {
        EnableAllControls();
    });

    $("button").click(function () {       
        $("[id$='errorMessage']").hide();
        if (this.id == "btnSaveLater" || this.id == "btnBack" || this.id == "btnSave" || this.id == "btnProceed" || this.id == "btnOK") {
            $("#countryInvalidPopUp").modal('hide');
            $("#cardNumberValidPopUp").modal('hide');
            $("#loading").fadeIn();
            var opts = {
                lines: 12, // The number of lines to draw
                length: 9, // The length of each line
                width: 2, // The line thickness
                radius: 10, // The radius of the inner circle
                color: '#ff9900', // #rgb or #rrggbb
                speed: 1, // Rounds per second
                trail: 60, // Afterglow percentage
                shadow: false, // Whether to render a shadow
                hwaccel: false // Whether to use hardware acceleration
            };
            var target = document.getElementById('loading');
            var spinner = new Spinner(opts).spin(target);
            return true;
        }
    });
}

MCMaster.prototype.ReplaceWords = function (wordtoReplace, replaceValue, classToSearch) {
    $(classToSearch).each(function () {
        var newIput;
        if ($(this).val() == "") {
            newIput = $(this).html().replaceAllString(wordtoReplace, replaceValue, false)
            $(this).html(newIput);
        }
        else {
            newIput = $(this).val().replaceAllString(wordtoReplace, replaceValue, false)
            $(this).val(newIput);
        }

        if ($(this).prop("href")) {
            var href = $(this).attr("href");
            href = href.replaceAllString(wordtoReplace, replaceValue, false);
            $(this).prop("href", href);
        }
        $(this).show();
    });

    $(".ReplaceableHiddenField").each(function () {
        var newIput;
        newIput = $(this).val().replaceAllString(wordtoReplace, replaceValue, false)
        $(this).val(newIput);
        //document.getElementById(this.attr("id")).value = "Hello";
        //$("[id$='hdnCardNumInvalidMess']").val("Hello");

    });
}