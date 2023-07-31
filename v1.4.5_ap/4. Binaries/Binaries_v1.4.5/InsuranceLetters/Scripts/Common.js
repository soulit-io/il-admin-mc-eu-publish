


//Key stroke handlers
var isShift = false;

function setHiddenDateELement(obj) {
    var hiddenDateElementId = 'hdn' + obj.id.replace('bdp', '') + '';
    $('#' + hiddenDateElementId + '').val(obj.value);
}

function clearTextboxUnknown(checkbox, textbox) {
    var txtBox = $("[id$='" + textbox + "']");
    var chkbox = $("[id$='" + checkbox + "']");
    if (chkbox.prop('checked')) {
        txtBox.val("");
    }
}

function uncheckCheckboxIfknow(checkbox, textbox) {
    var chkbox = $("[id$='" + checkbox + "']");
    var txtBox = $("[id$='" + textbox + "']");
    if (txtBox.val() != "") {
        chkbox.removeAttr('checked');
    }
}

function setFocus() {
    var form1 = $("form");
    var control = form1.find('.input-validation-error').first();
    //control[0].focus();
}

function allowNumberOnly2(e, val, len) {

    if (val.value.length >= len)
        return false;
    var key = window.event ? e.keyCode : e.which;
    if ((e.keyCode == 37 || e.keyCode == 39 || e.keyCode == 46 || e.keyCode == 9) && e.which == 0)// for tab and left, right,delete
        return true;

    var keychar = String.fromCharCode(key);
    reg = /^[0-9\b\t\-]*$/;

    return reg.test(keychar);
}


function PhoneOnly(e) {

    var key;

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

    // control keys  - backspace, enter, tab, delete, left arrow, right arrow, end, home
    if ((key == null) || (key == 0) || (key == 8) || (key == 13) || (key == 9) || (key == 37) || (key == 39) || (key == 35) || (key == 36) || (key == 46))
        return true;

    //dash and space
    if ((key == 32) || (key == 189) || (key == 109))
        return false;

        // numbers
    else if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105))
        return true;
    else
        return false;
}
function PhoneNumber(e) {
    var key;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105) || (key == 32) || (key == 45))
        return true;
    else
        return false;
}


function CheckclaimAmount(e, ctrl) {
    var key;

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
         
    else if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105) || key == 44 || key == 46) {   //decimal point

        return true;
    }
    else

        return false;
}

function NoGreaterLessThanForwardBackwordSlash(e) {
    var key;

    if (window.event)
        e = window.event;

    if (e.charCode)
        key = e.charCode;
    else
        key = e.keyCode;

    //if key code is ascii for < or > / \ & then don't allow
    if (key == 60 || key == 62 || key == 47 || key == 92 || key == 38)
        return false;
    else
        return true;
}

// onkeypress compatiable
function NoGreaterLessThan(e) {
    var key;

    if (window.event)
        e = window.event;

    if (e.charCode)
        key = e.charCode;
    else
        key = e.keyCode;

    //if key code is ascii for < or > & then don't allow
    if (key == 60 || key == 62 || key == 38)
        return false;
    else
        return true;
}

function getSelText() {
    var txt = '';
    if (window.getSelection) {
        txt = window.getSelection();
    }
    else if (document.getSelection) {
        txt = document.getSelection();
    }
    else if (document.selection) {
        txt = document.selection.createRange().text;
    }
    else txt = '';

    return txt;
}

function ClearShift(e) {
    var key;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if (key == 16)
        isShift = false;

    return true;
}

function setCountry(State, Country) {
    //    var ctrl = $('#ddlOtherState');
    //    var cctrl = $('#ddlOtherCountry');

    if (State.val() == "") {
        Country.val('');
        Country.removeAttr("disabled");
    }
    else {
        if ("AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,GU,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VA,VI,VT,WA,WI,WV,WY".indexOf(State.val()) > -1) {
            Country.val('USA');
            Country.attr("disabled", "");
            Country.removeClass('input-validation-error');
        }
        else if ("AB,BC,MB,NB,NF,NS,NT,ON,PE,PQ,SK,YT,NU".indexOf(State.val()) > -1) {
            Country.val('CAN');
            Country.attr("disabled", "");
            Country.removeClass('input-validation-error');

        }
        else if ("AG,BA,BS,AH,CH,CI,CL,CP,CW,DG,EM,FD,GJ,GR,HG,JL,MH,MR,NA,NL,OX,PU,QA,QN,SL,SN,SO,TA,TL,TM,VZ,YC,ZT".indexOf(State.val()) > -1) {
            Country.val('MEX');
            Country.attr("disabled", "");
            Country.removeClass('input-validation-error');
        }
        else {
            Country.val('');
            Country.removeAttr("disabled");

        }


    }
    var Cval = Country.val();
    //to set the country value for the span tag : changed because of css change for dropdown
    if (Cval != undefined) {

        var countryText = $("select option[value=" + Cval + "]")[0].label;
        $("#" + Country.attr("id")).next(".holder").text(countryText);
    }
    else {
        var countryText = $("select option:first").text();
        $("#" + Country.attr("id")).next(".holder").text(countryText);
    }
    $("#" + Country.attr("id")).closest("div").removeClass('input-validation-error');

    if (State.val() == "") {
        Country.val('');
        Country.removeAttr("disabled");
        Country.closest("div").removeClass('disable-wrap');
    }
    else {
        if ("AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,GU,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VA,VI,VT,WA,WI,WV,WY".indexOf(State.val()) > -1) {
            $("#" + Country.attr("id")).closest("div").addClass('disable-wrap');
        }
        else if ("AB,BC,MB,NB,NF,NS,NT,ON,PE,PQ,SK,YT,NU".indexOf(State.val()) > -1) {
            $("#" + Country.attr("id")).closest("div").addClass('disable-wrap');

        }
        else if ("AG,BA,BS,AH,CH,CI,CL,CP,CW,DG,EM,FD,GJ,GR,HG,JL,MH,MR,NA,NL,OX,PU,QA,QN,SL,SN,SO,TA,TL,TM,VZ,YC,ZT".indexOf(State.val()) > -1) {
            $("#" + Country.attr("id")).closest("div").addClass('disable-wrap');
        }
        else {
            $("#" + Country.attr("id")).closest("div").removeClass('disable-wrap');
        }


    }

}

function NoNumbers(e) {
    var key;

    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if (key == 16)
        isShift = true;

    if (isShift) {
        return true;
    }

    if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105)) {
        return false;
    }

    return true;
}

function onlyTabAllowed(e) {
    if (window.event)
        key = window.event.keyCode;
    else if (e)
        key = e.which;
    else
        return true;

    if (key == 9) {
        return true;
    }

    return false;
}

function FormatDecimal(ctrl, size, decplaces) {
    var snbr = ctrl.value;
    var len = snbr.length;
    var intsz = size - decplaces;

    //If decimal is present do we need to add zeroes?
    if (snbr.indexOf('.') > -1) {
        var dpos = snbr.indexOf('.');

        if (dpos == (len - decplaces - 1))
            return;

        if (dpos < (len - decplaces - 1)) {
            snbr = snbr.replace('.', '');
        }
        else {
            var i = len - dpos - 1;
            while (i < decplaces) {
                snbr = snbr + '0';
                i++;
            }
            ctrl.value = snbr;
            return;
        }
    }

    if (snbr.length <= intsz) {
        snbr = snbr + ".";
        var i = 0;
        while (i < decplaces) {
            snbr = snbr + '0';
            i++;
        }
        ctrl.value = snbr;
        return;
    }
    else {
        var sub = snbr.substring(0, intsz);
        snbr = sub + "." + snbr.substring(intsz);
        len = snbr.length;
        var dpos = snbr.indexOf('.');
        var i = len - dpos - 1;
        while (i < decplaces) {
            snbr = snbr + '0';
            i++;
        }
        ctrl.value = snbr;
        return;
    }
}


function CreateCalendar(TextBoxControl, MaxDate) {
    //var language = Request.QueryString("cd");
    //language = language.Item.toString().toLowerCase();
    //if (language == 'en')
    //    $.datepicker.setDefaults($.datepicker.regional['']);
    //else
    //    $.datepicker.setDefaults($.datepicker.regional[language]);

    //TextBoxControl.datepicker({ dateFormat: "mm/dd/yy", maxDate: MaxDate 
    //});

}

function CreateMonthYearAdjustableCalendar(TextBoxControl, MaxDate) {
    //var language = Request.QueryString("cd");
    //language = language.Item.toString().toLowerCase();
    //if (language == 'en')
    //    $.datepicker.setDefaults($.datepicker.regional['']);
    //else
    //    $.datepicker.setDefaults($.datepicker.regional[language]);



    //TextBoxControl.datepicker({
    //    dateFormat: "mm/dd/yy", 
    //    changeMonth: true,
    //    changeYear: true,
    //    maxDate: MaxDate,
    //    onSelect: function () {
    //        currenttab = TextBoxControl.attr("tabindex");
    //        nexttab = currenttab * 1 + 1;

    //        setTimeout(function () {
    //           $("[tabindex='" + nexttab + "']").focus();
    //        }, 100); 
    //        TextBoxControl.datetimepicker({
    //            language: "pt"
    //        });

    //    }   

    //});
}

function clearTextbox(Textbox) {
    Textbox.val("");
}

function setMaxLengths(Country, State, PrimaryPhone, AlteratePhone) {
    if (Country.val() == "USA" && "VI, PR, AA, AE, AP,GU".indexOf(State.val()) == -1) {

        PrimaryPhone.attr('maxlength', '10');
        if (AlteratePhone) {
            AlteratePhone.attr('maxlength', '10');
        }
    }
    else {
        PrimaryPhone.attr('maxlength', '20');
        if (AlteratePhone) {
            AlteratePhone.attr('maxlength', '20')
        }
    }
}

function EnableAllControls() {
    $("*").removeAttr("disabled");
}

function HTMLDecode(strText) {
    var ret = strText;
    if (ret != "") {
        ret = ret.replace(/&amp;/g, '&').replace(/&gt;/g, '>').replace(/&lt;/g, '<');
    }
    return ret;
}

function limitText(limitField, limitNum) {

    if (limitField.val().length > limitNum) {
        limitField.val(limitField.val().substring(0, limitNum));
    }
}

function update_counter(counter, text_elem, max_len) {

    var counterElem = $("[id$='" + counter + "']");
    var textElem = $("[id$='" + text_elem + "']");
    var len = textElem.val().length;
    var vall = max_len - textElem.val().length;
    counterElem.text(vall);
}

function clearValidateErrorClass() {
    $("*").removeClass("input-validation-error");
}

function phoneTypeEnableDisable(phone, phonetype) {
    if (phone.val() == "") {
        phonetype.val("");
        phonetype.attr("disabled", "disabled");
    }
    else {
        phonetype.removeAttr("disabled");
    }
}

function setPostalFormatHint(country, hintfield) {

    if (country.val() == "USA")
        hintfield.val("##### or #####-####");
    else if (country.val() == "CAN")
        hintfield.val("A#A #A#");
    else
        hintfield.val("");
}

/* Replaces all occurrences of a substring in a string  */
String.prototype.replaceAllString = function (token, newToken, ignoreCase) {
    var str, i = -1, _token;
    if ((str = this.toString()) && typeof token === "string") {
        _token = ignoreCase === true ? token.toLowerCase() : undefined;
        while ((i = (_token !== undefined ? str.toLowerCase().indexOf(_token, i >= 0 ? i + newToken.length : 0) : str.indexOf(token, i >= 0 ? i + newToken.length : 0))) !== -1) {
            str = str.substring(0, i).concat(newToken).concat(str.substring(i + token.length));
        }
    }
    return str;
};

//--Added for Project 02785-Hassle Free on 09/12/2013
function amountValidation(e, ctrl) {
    var key;

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

    // control keys  - backspace, enter, tab, delete, left arrow, right arrow, end, home
    if ((key == null) || (key == 0) || (key == 8) || (key == 13) || (key == 9) || (key == 37) || (key == 39) || (key == 35) || (key == 36) || (key == 46))
        return true;

    else if ((key >= 48 && key <= 57) || (key >= 96 && key <= 105) || key == 190 || key == 110 || key == 188) {   //decimal point
        var value = ctrl.val();
        var len = value.length;
        var idx = value.indexOf('.');

        if (len == 11 && idx == -1) {
            if ((key == 190 || key == 110) && len == 11)
                return true;
            else
                return false;
        }

        if ((idx != -1) && (key == 190 || key == 110))
            return false;
        else if ((idx != -1) && (len > (idx + 4)))
            return false;
        else
            return true;
    }
    else
        return false;

}
//------

// Added Method for Converting the date from DD/MM/YYYY to MM/DD/YYYY for MEA benefit related calendar Date
// for converting to existing format while saving 
function changeDateFormat(input) {
    var datePart = input.match(/\d+/g),
    year = datePart[2],
    month = datePart[1],
    day = datePart[0];
    return month + '/' + day + '/' + year;
}

// Added Method to display loading symbol (spinner) if page takes more time to load 
function LoadSpinner() {
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

// This function will allow to enter only Alphabets value.
function allowAlphabetsOnly(e) {
    if ((e.keyCode == 37 || e.keyCode == 39 || e.keyCode == 46 || e.keyCode == 9) && e.which == 0) {
        return true;
    }

    var key = window.event ? e.keyCode : e.which;
    var keychar = String.fromCharCode(key);
    reg = /^[a-zA-Z\t\b\s]*$/;
    return reg.test(keychar);

}


function allowValidPhoneNumberOnly(e) {
    var key;

    if (window.event)
        key = e.keyCode;
    else
        key = e.which;

    // tab and left, right,delete
    if ((e.keyCode == 37 || e.keyCode == 39 || e.keyCode == 46 || e.keyCode == 9) && e.which == 0) {
        return true;
    }

    //dash and space and backspace
    if ((key == 32) || (key == 45 || key == 8))
        return true;

        // numbers
    else if (key >= 48 && key <= 57)
        return true;
    else
        return false;
}

// type: error ok alert
function showMessage(message, elementId, type) {
    var htmlContent = message;
    var selector = '#' + elementId;
    $(selector).removeClass('message-error');
    $(selector).removeClass('message-ok');
    $(selector).removeClass('message-alert');
    $(selector).addClass('message-'+type);
    $(selector).html(htmlContent);
    $(selector).fadeIn();        			
}

function cleanMessages(elementId) {
    var selector = '#' + elementId;
    $(selector).removeClass('message-error');
    $(selector).removeClass('message-ok');
    $(selector).removeClass('message-alert');
    $(selector).fadeOut();
}

function isValidCPF(value) {
    var ret = true;
    value = value.replace("-", "");
    value = value.replace(/\./g, "");
    value = value.trim();

    for (var i = 0; i < 10; i++) {
        if (value == Array(value.length + 1).join(i) && value != "11111111111") {
            return false;
        }
    }

    if (value.length > 11) return false;

    //validando primeiro digito
    var add = 0;
    for (i = 0; i < 9; i++) {
        add += parseInt(value.charAt(i), 10) * (10 - i);
    }
    var rev = 11 - (add % 11);
    if (rev == 10 || rev == 11) {
        rev = 0;
    }
    if (rev != parseInt(value.charAt(9), 10)) {
        ret = false;
    }

    //validando segundo digito
    add = 0;
    for (i = 0; i < 10; i++) {
        add += parseInt(value.charAt(i), 10) * (11 - i);
    }
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11) {
        rev = 0;
    }
    if (rev != parseInt(value.charAt(10), 10)) {
        ret = false;
    }

    return ret;
}

function decodeHTMLEntities(text) {
    var entities = [
        ['amp', '&'],
        ['apos', '\''],
        ['#x27', '\''],
        ['#x2F', '/'],
        ['#39', '\''],
        ['#47', '/'],
        ['lt', '<'],
        ['gt', '>'],
        ['nbsp', ' '],
        ['quot', '"'],
        ['#183', '·'],
        ['#192', 'À'],
        ['#193', 'Á'],
        ['#194', 'Â'],
        ['#195', 'Ã'],
        ['#196', 'Ä'],
        ['#197', 'Å'],
        ['#198', 'Æ'],
        ['#199', 'Ç'],
        ['#200', 'È'],
        ['#201', 'É'],
        ['#202', 'Ê'],
        ['#203', 'Ë'],
        ['#204', 'Ì'],
        ['#205', 'Í'],
        ['#206', 'Î'],
        ['#207', 'Ï'],
        ['#208', 'Ð'],
        ['#209', 'Ñ'],
        ['#210', 'Ò'],
        ['#211', 'Ó'],
        ['#212', 'Ô'],
        ['#213', 'Õ'],
        ['#214', 'Ö'],
        ['#216', 'Ø'],
        ['#217', 'Ù'],
        ['#218', 'Ú'],
        ['#219', 'Û'],
        ['#220', 'Ü'],
        ['#221', 'Ý'],
        ['#222', 'Þ'],
        ['#223', 'ß'],
        ['#224', 'à'],
        ['#225', 'á'],
        ['#226', 'â'],
        ['#227', 'ã'],
        ['#228', 'ä'],
        ['#229', 'å'],
        ['#230', 'æ'],
        ['#231', 'ç'],
        ['#232', 'è'],
        ['#233', 'é'],
        ['#234', 'ê'],
        ['#235', 'ë'],
        ['#236', 'ì'],
        ['#237', 'í'],
        ['#238', 'î'],
        ['#239', 'ï'],
        ['#240', 'ð'],
        ['#241', 'ñ'],
        ['#242', 'ò'],
        ['#243', 'ó'],
        ['#244', 'ô'],
        ['#245', 'õ'],
        ['#246', 'ö'],
        ['#248', 'ø'],
        ['#249', 'ù'],
        ['#250', 'ú'],
        ['#251', 'û'],
        ['#252', 'ü'],
        ['#253', 'ý'],
        ['#254', 'þ'],
        ['#255', 'ÿ'],
        ['#338', 'Œ'],
        ['#339', 'œ'],
        ['#352', 'Š'],
        ['#353', 'š'],
        ['#376', 'Ÿ'],
        ['#402', 'ƒ'],
        ['#710', 'ˆ'],
        ['#732', '˜'],
        ['#8194', ' '],
        ['#8195', ' '],
        ['#8201', ' '],
        ['#8204', '‌'],
        ['#8205', '‍'],
        ['#8206', '‎'],
        ['#8207', '‏'],
        ['#8211', '–'],
        ['#8212', '—'],
        ['#8216', '‘'],
        ['#8217', '’'],
        ['#8218', '‚'],
        ['#8220', '“'],
        ['#8221', '”'],
        ['#8222', '„'],
        ['#8224', '†'],
        ['#8225', '‡'],
        ['#8226', '•'],
        ['#8230', '…'],
        ['#8240', '‰'],
        ['#8242', '′'],
        ['#8243', '″'],
        ['#8249', '‹'],
        ['#8250', '›'],
        ['#8254', '‾'],
        ['#8364', '€'],
        ['#8482', '™'],
        ['#8592', '←'],
        ['#8593', '↑'],
        ['#8594', '→'],
        ['#8595', '↓'],
        ['#8596', '↔'],
        ['#8629', '↵'],
        ['#8968', '⌈'],
        ['#8969', '⌉'],
        ['#8970', '⌊'],
        ['#8971', '⌋'],
        ['#9674', '◊'],
        ['#9824', '♠'],
        ['#9827', '♣'],
        ['#9829', '♥'],
        ['#9830', '♦']
       
    ];

    for (var i = 0, max = entities.length; i < max; ++i)
        text = text.replace(new RegExp('&' + entities[i][0] + ';', 'g'), entities[i][1]);

    return text;
}