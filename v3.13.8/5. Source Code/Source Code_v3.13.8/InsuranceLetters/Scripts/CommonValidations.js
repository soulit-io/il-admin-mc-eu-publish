function CommonValidations(parameters) {

}

CommonValidations.prototype.addCommonValidations = function () {



    jQuery.validator.addMethod("notAllowSpecialCharcters",
        function (value, element) {
            return value.match(new RegExp("^[^<>]*$"),
                "There is an error with the field");
        });

    jQuery.validator.addMethod("notAllowSpecialCharctersOrNumbers",
        function (value, element) {
            return value.match(new RegExp("^[^1-9^<>%$@!#+=]*$"),
                "There is an error with the field");
        });

    jQuery.validator.addMethod("textOnly",
        function (value, element) {
            return value.match(new RegExp("^[A-Za-zÁÉÍÓÚáéíóuñÑ\x20]*$"),
                "There is an error with the field");
        });

    jQuery.validator.addMethod("validateEmailAddress",
        function (value, element) {
            
            if (jQuery.trim(value) == "") {
                return true;
            }
            filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            if (filter.test(value)) {
                return true;
            } else {
                return false;
            }

        });
     
    jQuery.validator.addMethod("NotAllowNumbers",
         function (value, element) {
             if (jQuery.trim(value) == "") {
                 return true;
             }
             return value.match(new RegExp("^[^[0-9]]*$"),
            "There is an error with the field");
         });

    jQuery.validator.addMethod("PhoneNumberValidate",
        function (value, element) {
            if (value != "") {
                return value.match(new RegExp("^[0-9+\x20-]*$"),
                    "There is an error with the field");
            } else {
                return true;
            }
        });

    jQuery.validator.addMethod("NumbersOnly",
        function (value, element) {
            if (jQuery.trim(value) == "") {
                return true;
            }
            return value.match(new RegExp("^[0-9]+$"),
                "There is an error with the field");
        });

    jQuery.validator.addMethod("NumbersLettersOnly",
        function (value, element) {
            if (jQuery.trim(value) == "") {
                return true;
            }
            return value.match(new RegExp("^[0-9a-zA-z]+$"),
                "There is an error with the field");
        });

    jQuery.validator.addMethod("OnlyOneRequired",
        function (value, element, controls) {
            var boolValid = false;
            $.each(controls, function (key, value) {
                
                if (jQuery.trim(value.val()) != "") {
                    boolValid = true;
                    //This will end the each loop
                    return false;
                }
            });

            return boolValid;
        });

    jQuery.validator.addMethod("OnlyOneRequiredCheckbox",
        function (value, element, controls) {
            for (var i = 0; i < controls.length; i++) {
                if (controls[i].is(':checked')) {
                    return true;
                }
            }

            return false;
        });


    // Paramaters(Alt Phone Textbox, Type Dropdownbox)
    jQuery.validator.addMethod("altPhoneTypeRequired",
        function (value, element, controls) {

            if (jQuery.trim(controls[0].val()) == "") {
                return true;
            } else {

                if (controls[1].val() == "") {
                    return false;
                } else {
                    return true;
                }

            }
        }, "There is an error with the field");

    // Paramaters(State, Country)
    jQuery.validator.addMethod("validatePhone",
        function (value, element, Controls) {
            var State = Controls[0];
            var Country = Controls[1];
            if (value != "") {
                if (Country.val() != "USA" || "VI, PR, AA, AE, AP,GU".indexOf(State.val()) >= 0) {
                    if (value.length < 7 || value.length > 20) {
                        return false;
                    }
                } else {

                    if (value.length < 10 || value.length > 10) {
                        return false;
                    }
                }

                var first = value.substr(0, 1);
                for (var i = 1; i < value.length; ++i) {
                    if (value.substr(i, 1) != first) {
                        return true;
                    }
                }

                return false;
            } else {
                return true;
            }

        }, "There is an error with the field");

    //Paramters (Country)
    jQuery.validator.addMethod("postalCodeRequired",
        function (value, element, CountryControl) {
            if (CountryControl.val() != "CAN" && CountryControl.val() != "USA") {
                return true;
            } else {
                if (jQuery.trim(value) == "") {
                    return false;
                }
            }

            return true;
        }, "There is an error with the field");

    //Paramters (Country)
    jQuery.validator.addMethod("postalCodeValidate",
        function (value, element, CountryControl) {

            if (CountryControl.val() == "CAN") {
                return value.match(new RegExp("^([A-Z]|[a-z]){1}[0-9]{1}([A-Z]|[a-z]){1}\x20[0-9]{1}([A-Z]|[a-z]){1}[0-9]{1}$"));
            } else if (CountryControl.val() == "USA") {
                return value.match(new RegExp("^[0-9]{5}(?:-[0-9]{4})?$"));
            } else {
                return true;
            }
        }, "There is an error with the field");

    //Parameters (Country)
    jQuery.validator.addMethod("postalCodeValidateNotRequired",
        function (value, element, CountryControl) {

            if (jQuery.trim(value) == "") {
                return true;
            }
            else {
                if (CountryControl.val() == "CAN") {
                    return value.match(new RegExp("^([A-Z]|[a-z]){1}[0-9]{1}([A-Z]|[a-z]){1}\x20[0-9]{1}([A-Z]|[a-z]){1}[0-9]{1}$"));
                } else if (CountryControl.val() == "USA") {
                    return value.match(new RegExp("^[0-9]{5}(?:-[0-9]{4})?$"));
                } else {
                    return true;
                }
            }

        }, "There is an error with the field");

    //Parmater State
    jQuery.validator.addMethod("countryCheck",
        function (value, element, State) {
            //var State = $("#ddState");

            if (State.val() == "AA" || State.val() == "AE" || State.val() == "AP") {
                return true;
            }

            if (value == "USA") {
                if ("AA, AE, AP,AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,GU,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VA,VI,VT,WA,WI,WV,WY".indexOf(State.val()) < 0) {
                    return false;
                }
            }

            if (value == "CAN") {
                if ("AB,BC,MB,NB,NF,NS,NT,ON,PE,PQ,SK,YT,NU,IT".indexOf(State.val()) < 0) {     //--Modified for GiftBugQAUATTest - Issue Fix on 12/23/2013
                    return false;
                }
            }

            if (value == "MEX") {
                if ("AG,BA,BS,AH,CH,CI,CL,CP,CW,DG,EM,FD,GJ,GR,HG,JL,MH,MR,NA,NL,OX,PU,QA,QN,SL,SN,SO,TA,TL,TM,VZ,YC,ZT,IT".indexOf(State.val()) < 0) {     //--Modified for GiftBugQAUATTest - Issue Fix on 12/23/2013
                    return false;
                }
            }

            if (value != "USA" && value != "CAN" && value != "MEX" && State.val() != "") {
                if ("AA, AE, AP,AK,AL,AR,AZ,CA,CO,CT,DC,DE,FL,GA,GU,HI,IA,ID,IL,IN,KS,KY,LA,MA,MD,ME,MI,MN,MO,MS,MT,NC,ND,NE,NH,NJ,NM,NV,NY,OH,OK,OR,PA,PR,RI,SC,SD,TN,TX,UT,VA,VI,VT,WA,WI,WV,WY,AB,BC,MB,NB,NF,NS,NT,ON,PE,PQ,SK,YT,AG,BA,BS,AH,CH,CI,CL,CP,CW,DG,EM,FD,GJ,GR,HG,JL,MH,MR,NA,NL,NU,OX,PU,QA,QN,SL,SN,SO,TA,TL,TM,VZ,YC,ZT".indexOf(State.val()) >= 0) {
                    return false;
                }
            }

            return true;

        }, "There is an error with the field");

    //Paramater  Alt Phone Type
    jQuery.validator.addMethod("altPhoneRequired",
        function (value, element, ControlAltPhoneType) {
            if (ControlAltPhoneType.val() != "") {
                if (jQuery.trim(value) == "") {
                    return false;
                }
            }
            return true;
        }, "There is an error with the field");

    jQuery.validator.addMethod("CountryRequired",
        function (value, element) {
            if (element.disabled) {
                return true;
            } else {
                if (jQuery.trim(value) == "") {
                    return false;
                }
            }
            return true;
        }
    );
    //Paramater min Value, Max Value
    jQuery.validator.addMethod("validateRange",
        function (value, element, numberRange) {
            var min = parseFloat(numberRange[0]);
            var max = parseFloat(numberRange[1]);
            var pint = parseFloat(value, 10);
            if (jQuery.trim(value) == "") {
                return true;
            }

            if (pint < min || pint > max)
                return false;
            else
                return true;
        }
    );

    jQuery.validator.addMethod("allowOnly4Digits",
            function (value, element) {
                var indexOfDot = value.indexOf(".");
                if (indexOfDot == -1) {
                    if (value.length > 10) {
                        return false;
                    }
                    return true;
                }
                var valueDecimals = value.substring(indexOfDot + 1);
                var valueNumber = value.substring(0, indexOfDot);
                if (valueDecimals.length > 4) {
                    return false;
                }

                if (valueNumber.length > 10) {
                    return false;
                }

                return true;
            });


    jQuery.validator.addMethod("validatePhoneNoRegion",
	        function (value, element) {

	            if (jQuery.trim(value) == "") {
	                return true;
	            }
	            if (value.length < 7) {
	                return false;
	            }

	            var first = value.substr(0, 1);
	            for (var i = 1; i < value.length; ++i) {
	                if (value.substr(i, 1) != first) {
	                    return true;
	                }
	            }

	            return false;
	        });


    jQuery.validator.addMethod("AmountOnly",
        function (value, element) {
            if (value != "" || value != 0) {
                return value.match(new RegExp("^[0-9-,.]+$"),
            "There is an error with the field");
            }
            else
                return true;
        });

    $.validator.addMethod("validatedate",
        function (value, element) {
            if (value == null || value == "") return true;
            var format = $(element).data('format');
            var ret = moment(value, format, true).isValid();
            return ret;
        });

    $.validator.addMethod("validatereturnafterdeparture",
        function (value, element) {
            var format = $(element).data('format');
            if (!value || value == '') return true; // NO VALUE, REQUIRED BUSINESS
            var departureStr = $('#DepartureDate').val();
            if (!departureStr || departureStr == '') return false; // NO DEPARTURE, FAIL
            var returnDate = moment(value, format);
            var departureDate = moment(departureStr, format);
            return returnDate.isAfter(departureDate.add('days', -1));
        });

      $.validator.addMethod("validatedateoneyear",
            function (value, element) {
                var format = $(element).data('format');
                if (!value || value == '') return true; // NO VALUE, REQUIRED BUSINESS
               
                var selectedDate = moment(value, format);
                var todayDate = moment();
                var todayDateB = moment();
                return ( selectedDate.isBefore(todayDate.add('days', 365)) && selectedDate.isAfter(todayDateB.add('days', -1)) );
               // return (selectedDate.isBefore(todayDate.add('days', 365)));

          });

    $.validator.addMethod("validatedateoneyearandahalf",
        function (value, element) {
            var format = $(element).data('format');
            if (!value || value == '') return true; // NO VALUE, REQUIRED BUSINESS

            var selectedDate = moment(value, format);
            var todayDate = moment();
            var todayDateB = moment();
            return (selectedDate.isBefore(todayDate.add('days', 547)) && selectedDate.isAfter(todayDateB.add('days', -1)));

    });



    $.validator.addMethod("validateagefeebased",
        function (value, element) {

            var format = $(element).data('format');
            if (!value || value == '') return true; // NO VALUE, REQUIRED BUSINESS

            var selectedDate = moment(value, format);

            return (selectedDate.isAfter(moment().subtract('years', 117)) && selectedDate.isBefore(moment().add('days', -1)));
        });

    $.validator.addMethod("validateDateFuture",
        function (value, element) {

            var format = $(element).data('format');
            if (!value || value == '') return true; // NO VALUE, REQUIRED BUSINESS

            var selectedDate = moment(value, format);

            return (selectedDate.isBefore(moment().add('days', -1)));
        });

    $.validator.addMethod("validatecpf",
        function (value, element) {
            var ret = isValidCPF(value);
            if (ret) {
                value = value.replace(/\D/g, "");
                //value = value.replace(/(\d{3})(\d)/, "$1.$2");
                //value = value.replace(/(\d{3})(\d)/, "$1.$2");
                //value = value.replace(/(\d{3})(\d)/, "$1-$2");
                $(element).val(value);
            }
            return ret;
        });


    jQuery.validator.addMethod("contactDDD",
        function (value, element) {
            var ret = true;

            if ((value !== '') && (value > 0) && (value.length >= 0) && (value.length <= 3) && (!isNaN(value))) {
                $('.Telephone2').trigger("change");
                return ret
            }
            else {
                return false
            }
        },);


    jQuery.validator.addMethod("contactPhone", 
        function (value, element) {
            var ret = true;

            if ((value != '') && (value.length >= 8) && (value.length <= 9) && (!isNaN(value))) {
                $('.Telephone1').trigger("change");
                return ret
            }
            else {
                return false
            }
        }
    );

    jQuery.validator.addMethod("rangelength8",
        function (value, element) {
                if (value.length > 8 || value.length < 8) {
                    return false;
                }
                return true;
        }
    );

    var passports = [];
    jQuery.validator.addMethod("checkpassport", function (value, element) {
        passports = []
        var newPassport = value;

        $(".checkpassport").each(function () {

            passports.push($(this).val());
        })

        var coincidences = passports.filter(val => val == newPassport)


        if (coincidences.length > 1 && newPassport != null && newPassport != undefined && newPassport != '') {
            return false
        }

        return true;
    });



};