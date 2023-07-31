var findTickets = function (home, slug, application, properties, callbackOk, callbackFail) {
	$.ajax({
		url: home + '/TicketFinder/PostFindTickets',
		contentType: "application/json",
		type: "POST",
		data: JSON.stringify({
			application: application,
			properties: properties
        }),
        headers: { __RequestVerificationToken: $('input[name="__RequestVerificationToken"]').val() },
		success: function (data, textStatus, jqXHR) {
			callbackOk(data);
		},
		error: function (jqXHR, textStatus, errorThrown) {
			if (callbackFail) callbackFail(textStatus);
		}
	});
}

var findIdTickets = function (home, slug, application, properties, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/TicketFinder/PostFindIdTickets',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify({
            application: application,
            properties: properties
        }),
        headers: { __RequestVerificationToken: $('input[name="__RequestVerificationToken"]').val() },
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}

var findPayerTransactions = function (home, slug, application, properties, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/PayerTransaction/PostFindPayerTransaction',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify({
            application: application,
            properties: properties
        }),
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}

var findBatchs = function (home, slug, application, properties, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/TicketFinder/PostFindBatchs',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify({
            application: application,
            properties: properties
        }),
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}

var findLastTravel = function (home, slug, application, properties, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/LastTravel/PostFindLastTravel',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify({
            application: application,
            properties: properties
        }),
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}


var getTransactionFields = function (home, slug, application, transaction, callbackOk, callbackFail) {
    console.log('getTransactionsFields');
    $.ajax({
        url: home + '/PayerTransaction/GetTransactionData?transaction=' + transaction,
        type: "GET",
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            callbackFail(textStatus);
        }
    });
}

var findPlans = function (home, slug, req, callbackOk, callbackFail) {
    $.ajax({        
        url: home + '/FeeBased/PostGetPlans',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify(req),
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}

var getFeeBasedStatus = function (home, slug, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/FeeBased/GetFeeBasedStatus?slug=' + slug,
        contentType: "application/json",
        type: "GET",
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}

var generateFeeBasedCertificates = function (home, slug, callbackOk, callbackFail) {
    $.ajax({
        url: home + '/FeeBased/GenerateCertificates?slug=' + slug,
        contentType: "application/json",
        type: "GET",
        success: function (data, textStatus, jqXHR) {
            callbackOk(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (callbackFail) callbackFail(textStatus);
        }
    });
}
