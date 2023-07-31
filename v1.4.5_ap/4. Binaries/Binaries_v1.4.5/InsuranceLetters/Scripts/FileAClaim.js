
var PageObject;

$(document).ready(function () {
    $('#validation-summary-details').hide();
    LoadSpinner();
    PageObject = new FileAClaim();

    // Added for calendar related events
    var language = Request.QueryString("cd");
    if (Request.QueryString("cd").toString() != null) {
        language = language.Item.toString().toLowerCase();
    }
    else {
        language = $("[id$='hdnSelectedLanguage']").val();
    }

    /*** Multiple Accordin****/
    $('.panel-wrap').on('click', function () {
        $('.multi-accordin').collapse('toggle');
    });
    //------

    //Binds the calendar to the textbox
    //RefreshDate(language);

    $(":input").each(function (i) { $(this).attr('tabindex', i + 1); });
    $("#loading").fadeOut();

    // Added for Project 041503 - MasterCard Web Service - External Web.
    var popDisplay = Request.QueryString("isError");
    if (popDisplay == 'y') {
        OpenCallUsMsg();
    }
    else {
        PageObject.setFocus();
    }

    // Sets the focus on to the Proceed button after calendar date is selected.
    $('.date').each(function (index, value) {
        var $myText = $(value);
        $myText.data("value", $myText.val());
        setInterval(function () {
            var data = $myText.data("value"),
                val = $myText.val();

            if (data !== val && val != "") {
                // Update the value in the temparary variable
                $myText.data("value", $(value).val());
                 
                // setting focus on to the next element 
                var nextElementTabIndex = $myText[0].tabIndex + 1;
                var nextElementId = $('[tabindex=' + nextElementTabIndex + ']')[0].id;                 
                if (nextElementId == "btnBack" || nextElementId == "btnExit")
                {
                    $("[id$='btnProceed']").focus();
                }
                else {
                    $('[id$=' + nextElementId + ']').focus();
                }                
            }
        }, 100);
    });
});

// Added for Project 041503 - MasterCard Web Service - External Web.
function OpenCallUsMsg() {
    CreatePopup($("[id$='dialog_message']"));
    $("#error").modal('show');
}

function RefreshDate(language) { 

    $(".date").each(function () {
        var disableFuture = ($(this.id).selector == "txtRVDEndingDate") ? false : true;
        var futureYear = ($(this.id).selector == "txtRVDEndingDate") ? new Date().getFullYear() + 10 : new Date().getFullYear();
        var sundayBegginingCalendar = (language == "es") ? false : true;
        var date = new Date();
        var calendarHeaderText = $("[id$='hdnCalendarHeaderText']").val();

        $(this).ionDatePicker({
            lang: language, // set the language of the calendar.
            years: new Date().getFullYear() - 10 + "-" + futureYear, // Specifies the years range
            maxDate: date.setDate(date.getDate() + 1),
            format: "MM/DD/YYYY",
            sundayFirst: sundayBegginingCalendar,
            disableFutureDates: disableFuture,
            calendarHeaderText: calendarHeaderText
        });
    });

    $(".date").keydown(function (event) {
        var code = event.keyCode || event.which;
        if (code != '9') {
            event.preventDefault();
        }
    }).bind("cut copy paste", function (e) {
        e.preventDefault();
    }).attr("placeholder", $("[id$='hdnCalendarDatePlaceHolder']").val());
}

// Added for Project 041503 - MasterCard Web Service - External Web.
function CreatePopup(dialogDiv) {

    var msgValue = Request.QueryString("msg");

    if (msgValue == "1") {
        dialogDiv.html(HTMLDecode($("[id$='lblNoCoverage1']").text()));
    }
    else if (msgValue == "2") {

        dialogDiv.html(HTMLDecode($("[id$='lblNoCoverage2']").text()));
    }
    else if (msgValue == "3") {
        $("[id$='lblNoCoverage3']").text($("[id$='lblNoCoverage3']").text().replaceAllString("[TollFreeNumber]", $("[id*='hdnReplaceTollFreeNumberText']").val()));
        dialogDiv.html(HTMLDecode($("[id$='lblNoCoverage3']").text()));
    }
    else if (msgValue == "007") {
        dialogDiv.html(HTMLDecode($("[id$='lblWSError007']").text()));
    }
    else if (msgValue == "008") {
        dialogDiv.html(HTMLDecode($("[id$='lblWSError008']").text()));
    }
    else if (msgValue == "tmt") {
        dialogDiv.html(HTMLDecode($("[id$='lblWSTimeOutError']").text()));
    }

    var language = Request.QueryString("cd");
    language = language.Item.toString().toLowerCase();
}

function HTMLDecode(strText) {
    var ret = strText;
    if (ret != "") {
        ret = ret.replace(/&amp;/g, '&').replace(/&gt;/g, '>').replace(/&lt;/g, '<');
    }
    return ret;
}

function FileAClaim() {
    var self = this;
    self.CardNumber = $("[id$='txtCardNumber']");
    self.DisplayPopup = Request.QueryString("swp") == 'y' || Request.QueryString("swp") == 'Y' ? true : false;
    self.Repeat = Request.QueryString("rpt") == 'y' || Request.QueryString("rpt") == 'Y' ? true : false;
    self.Review = Request.QueryString("review") == 'y' || Request.QueryString("review") == 'Y' ? true : false;
    self.Back = $("[id$='btnBack']");
    self.Exit = $("[id$='btnExit']");
    self.OKButton = $("[id$='btnOK']");
    self.PurchaseDate = $("[id$='txtPurchaseDate']");
    self.PurchaseDatePanel = $("[id$='PurchaseDate']");
    self.IncidentDatePanel = $("[id$='divIncidentDate']");
    self.IncidentDate = $("[id$='txtIncidentDate']");
    self.RentalDatesPanel = $("[id$='divRentalDates']");
    self.RentalDatesBegin = $("[id$='txtRVDBeginningDate']");
    self.RentalDatesEnd = $("[id$='txtRVDEndingDate']");
    self.ProgramType = $("[id$='hdnSelectedProgType']");
    self.pnlPRO = $("[id$='pnlPRO']");
    self.ProPurchase = $("[id$='txtProPurchase']");
    self.DatePrinted = $("[id$='txtDatePrinted']");
    self.DateSawAd = $("[id$='txtDateSawAd']");
    self.Form = $("form");
    self.ValidationSummary = $("[id$='validation-summary-details']");
    self.initializeObject();
}


FileAClaim.prototype.initializeObject = function () {
    var self = this;
    //Function that setups JQuery validation with many options
    self.initializeValidation();
    //Adds common functions to Jquery Validate
    self.hideShowDates();
    var commonValidations = new CommonValidations();
    commonValidations.addCommonValidations();

    self.defineCustomValidations();
    self.applyCustomValidations();
    self.initializeClientEvents();
    self.displayValidationSummary();

}

FileAClaim.prototype.defineCustomValidations = function () {
    $.validator.addMethod("validCardLength",

        function (value, element) {

            var firstDigit = jQuery.trim(value).substr(0, 1);
            if (jQuery.trim(value).length != 16 && firstDigit != 3)
            { return false; }
            else
                return true;
        }
            , "There is an error with the field");
    $.validator.addMethod("validCardLengthAmex",

        function (value, element) {

            var firstDigit = jQuery.trim(value).substr(0, 1);
            if (jQuery.trim(value).length != 15 && firstDigit == 3)
            { return false; }
            else
                return true;
        }
            , "There is an error with the field");

    $.validator.addMethod("validateDateRange",
        function (value, element) {
            var enteredDate = new Date(value);
            var TomorrowDate = new Date();
            TomorrowDate.setDate(TomorrowDate.getDate() + 1);

            return (enteredDate <= TomorrowDate);

        });

    $.validator.addMethod("validBeginDate", function (value, element) {
        var BeginDate = $("[id$='txtRVDBeginningDate']").val();
        if (BeginDate == null) {
            return false;
        }
        else if (new Date(BeginDate) <= Date.today().add(1).days()) {
            return true;
        }
        else { return false; }
    }
            , $("[id$='hdnRentalDateBeginInvalid']").val());


    $.validator.addMethod("validEndDate", function (value, element) {
        var BeginDate = $("[id$='txtRVDBeginningDate']").val();
        var EndDate = $("[id$='txtRVDEndingDate']").val();
        if (EndDate == null) {
            return false;
        }
        else if (new Date(EndDate) < new Date(BeginDate)) {
            return false;
        }
        else { return true; }
    }
            , $("[id$='hdnRentalDateEndInvalid']").val());

    $.validator.addMethod("validateSawAdDate", function (value, element) {

        var PrintedDate = new Date($("[id$='txtDatePrinted']").val());
        var SawDate = new Date($("[id$='txtDateSawAd']").val());

        if (new Date(PrintedDate) > new Date(SawDate)) {
            return false;
        }

        return true;
    }
        , $("[id$='hdnProAdSawInvalid']").val());
    //Added for Project 042273 - MasterCard - PUR Eligibility Date on 05/19/2015
    $.validator.addMethod("validateIncdntDateVsPurchaseDate", function (value, element) {
        var PURPurchaseDate = $("[id$='txtPurchaseDate']").val();
        var PURIncidentDate = $("[id$='txtIncidentDate']").val();
        if (PURPurchaseDate == null || PURIncidentDate == null) {
            return false;
        }
        else if (new Date(PURIncidentDate) < new Date(PURPurchaseDate)) {
            return false;
        }
        else { return true; }
    }
        , $("[id$='hdnIncdntDateVsPurchaseDate']").val());
    //-------
}


FileAClaim.prototype.initializeValidation = function () {
    var self = this;

    self.validator = self.Form.bind("invalid-form.validate", function () { }).validate({
        errorPlacement: function (error, element) {
            error.prependTo("#error_message");
        },
        //Below are when the validations can be fired of. This one is only being fired off when the form is submitted
        onblur: false,
        onkeyup: false,
        onsubmit: true,
        onclick: false,
        onChange: false,
        onfocusout: false,
        //wrapper: "li",
        focusInvalid: true,
        errorClass: "error-msg",
        validClass: "success",
        highlight: function (element, errorClass, validClass) {
            
            // to highlight the div of textbox
            $(element).closest("div").addClass("input-validation-error");
        },
        unhighlight: function (element, errorClass, validClass) {
                // to unhighlight the div tag of textbox
                $(element).closest("div").removeClass("input-validation-error");
        },
        //This is grabbing all the errors and placing the errors in the div tag
        showErrors: function (errrorMap, errrorList) {
            var errorMessage = '';
            var x = 0;
            //This will fire off all the Jquery error events.
            this.defaultShowErrors();
            if (this.numberOfInvalids() != 0) {
                setFocus();
                $("#loading").fadeOut();
            }
        },
        errorPlacement: function (error, element) {
            if ($(element).attr('type') == 'radio' || $(element).attr('type') == 'checkbox') {
                //will insert the error message after error span tag for radiobutton and checkbox
                error.insertAfter($("#" + element[0].id + "-error"));
            }
            else {
                //will insert the error message after div tag for textbox and dropdown
                error.insertAfter(element.closest("div"));
            }
        },
    });
}

FileAClaim.prototype.initializeClientEvents = function () {
    var self = this;
}

FileAClaim.prototype.displayValidationSummary = function () {
    var self = this;
    if (self.ValidationSummary.html().trim().length <= 0) {
        self.ValidationSummary.hide();
    }
}

FileAClaim.prototype.applyCustomValidations = function () {
    var self = this;

    self.CardNumber.rules("add", {
        required: true,
        NumbersOnly: true,
        validCardLength: true,
        validCardLengthAmex: true,
        messages: {
            required: HTMLDecode($("[id$='hdnCardNumReqrdMess']").val()),
            NumbersOnly: $("[id$='hdnCardNumOnlyNumbersMess']").val(),
            validCardLength: $("[id$='hdnCardNumDigitsLimitMess']").val(),
            validCardLengthAmex: $("[id$='hdnCardNumDigitsLimitMessAmex']").val()
        }
    });

    if (self.ProgramType.val().toLowerCase() == "39@cdw") {

        self.RentalDatesBegin.rules("add", {
            required: true,
            validBeginDate: true,
            messages: {
                required: $("[id$='hdnRentalDateBeginMessage']").val(),
                validBeginDate: $("[id$='hdnRentalDateBeginInvalid']").val()
            }
        });

        self.RentalDatesEnd.rules("add", {
            required: true,
            validEndDate: true,
            messages: {
                required: $("[id$='hdnRentalDateEndMessage']").val(),
                validEndDate: $("[id$='hdnRentalDateEndInvalid']").val()
            }
        });
    }

    if (self.ProgramType.val().toLowerCase() == "39@pur") {

        self.IncidentDate.rules("add", {
            required: true,
            notAllowSpecialCharcters: true,
            validateDateRange: true,
            validateIncdntDateVsPurchaseDate: true,      //Added for Project 042273 - MasterCard - PUR Eligibility Date on 05/19/2015
            messages: {
                required: $("[id$='hdnDateIncidentRequired']").val(),
                notAllowSpecialCharcters: $("[id$='hdnDateIncidentInvalidChars']").val(),
                validateDateRange: $("[id$='hdnDateIncidentRangeError']").val(),
                validateIncdntDateVsPurchaseDate: $("[id$='hdnIncdntDateVsPurchaseDate']").val()      //Added for Project 042273 - MasterCard - PUR Eligibility Date on 05/19/2015
            }
        });
    }

    if (self.ProgramType.val().toLowerCase() == "39@wty" || self.ProgramType.val().toLowerCase() == "39@pur") {

        self.PurchaseDate.rules("add", {
            required: true,
            notAllowSpecialCharcters: true,
            validateDateRange: true,
            messages: {
                required: $("[id$='hdnWhatWasThePurchaseDateRequiredError']").val(),
                notAllowSpecialCharcters: $("[id$='hdnWhatWasThePurchaseDateFormatError']").val(),
                validateDateRange: $("[id$='hdnWhatWasThePurchaseDateInvalidError']").val()
            }
        });
    }

    if (self.ProgramType.val().toLowerCase() == "39@pro") {
        self.ProPurchase.rules("add", {
            required: true,
            messages: {
                required: $("[id$='hdnProPurchaseDate']").val()
            }
        });

        self.DatePrinted.rules("add", {
            required: true,
            messages: {
                required: $("[id$='hdnProAdPrintedDate']").val()
            }
        });

        self.DateSawAd.rules("add", {
            required: true,
            validateSawAdDate: true,
            messages: {
                required: $("[id$='hdnProAdSawDate']").val(),
                validateSawAdDate: $("[id$='hdnProAdSawInvalid']").val()
            }
        });
    }
}

FileAClaim.prototype.hideShowDates = function () {
    var self = this;
    var program = self.ProgramType.val();

    if (program.toLowerCase() == "39@wty") {
        self.PurchaseDatePanel.show();
        CreateMonthYearAdjustableCalendar(self.PurchaseDate, '+1d');
    }
    else {
        self.PurchaseDatePanel.hide();
    }

    if (program.toLowerCase() == "39@pur") {
        //Added for Project 042273 - MasterCard - PUR Eligibility Date on 05/21/2015
        self.PurchaseDatePanel.show();
        $("#divPurchaseDateLbl").css("height", "19px");
        $("#divPurchaseDateTxt").css("margin-left", "70px");
        //------
        self.IncidentDatePanel.show();
        CreateMonthYearAdjustableCalendar(self.PurchaseDate, '+1d');  //Added for Project 042273 - MasterCard - PUR Eligibility Date on 05/21/2015
        CreateMonthYearAdjustableCalendar(self.IncidentDate, '+1d');
    }
    else {
        self.IncidentDatePanel.hide();
    }

    if (program.toLowerCase() == "39@cdw") {
        self.RentalDatesPanel.show();
        CreateMonthYearAdjustableCalendar(self.RentalDatesBegin, '+1d');
        CreateMonthYearAdjustableCalendar(self.RentalDatesEnd);
    }
    else {
        self.RentalDatesPanel.hide();
    }

    if (program.toLowerCase() == "39@pro") {
        self.pnlPRO.show();
        CreateMonthYearAdjustableCalendar(self.ProPurchase, '+1d');
        CreateMonthYearAdjustableCalendar(self.DatePrinted, '+1d');
        CreateMonthYearAdjustableCalendar(self.DateSawAd, '+1d');
    }
    else {
        self.pnlPRO.hide();
    }
};

FileAClaim.prototype.setFocus = function () {
    var self = this;
    var program = self.ProgramType.val();
    if (self.Review) {
        if (program.toLowerCase() == "39@wty") {
            self.PurchaseDate.focus();
        }
        else if (program.toLowerCase() == "39@pur") {
            self.PurchaseDate.focus();  //Modified for Project 042273 - MasterCard - PUR Eligibility Date on 05/21/2015
        }
        else if (program.toLowerCase() == "39@cdw") {
            self.RentalDatesBegin.focus();
        }
        else if (program.toLowerCase() == "39@pro")
        {
            self.ProPurchase.focus();
        }
    }
    else {
        self.CardNumber.focus();
    }
};


function HTMLDecode(strText) {
    var ret = strText;
    if (ret && ret != "") {
        ret = ret.replace(/&amp;/g, '&').replace(/&gt;/g, '>').replace(/&lt;/g, '<');
    }
    return ret;
}

function validFirstDigits() {   
    var value = $("[id$='txtCardNumber']").val();
    var dialogDiv = $("[id$='dialog_message']")
    var language = Request.QueryString("cd");
    if (Request.QueryString("cd").toString() != null) {
        language = language.Item.toString().toLowerCase();
    }
    else {
        language = $("[id$='hdnSelectedLanguage']").val();
    }

    if (jQuery.trim(value) == "") {
        return true;
    }

    if (Request.QueryString("review") == 'Y') {
        return true;
    }

    var firstDigit = jQuery.trim(value).substr(0, 1);

    if ((firstDigit == 5 || firstDigit == 3)) {
        return true;
    }
    else {
        // Added != 4 on 02/13/2015 for card US4889 
        if (firstDigit != 4) {
            $("[class*='modal-body']").html(HTMLDecode($("[id$='hdnCardNumInvalidMess']").val()));
        }
        else {
            $("[class*='modal-body']").html(HTMLDecode($("[id$='hdnCardNumInvalidUSAAMess']").val()));
        }

        // Removing of the active status to reset the calendar to current date after displaying the invalid card number popup
        $(".date").data("isActive", false);
        RefreshDate(language);
        $("#cardNumberInvalidPopUp").modal('show');
        return false;
       
    }
}

// Added for the modal popup by taking the logic from the existing dialog functionality
function ClearFileAClaimScreen() {
    $("#cardNumberInvalidPopUp").modal('hide');
    $("[id$='txtCardNumber']").focus();
    $("[id$='txtCardNumber']").val("");
    $("[id$='txtPurchaseDate']").val("");
    $("[id$='txtIncidentDate']").val("");
    $("[id$='txtRVDBeginningDate']").val("");
    $("[id$='txtRVDEndingDate']").val("");
    $("[id$='txtProPurchase']").val("");
    $("[id$='txtDatePrinted']").val("");
    $("[id$='txtDateSawAd']").val("");
    $('#loading').fadeOut();
    return false;
}
