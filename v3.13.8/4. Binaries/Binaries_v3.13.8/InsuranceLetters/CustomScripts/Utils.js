const checkIfPayer = function (home, callbackOk, callbackFail) {
    var properties = [
    {
        key: "passport",
        value: $('#qryPassport').val()
    }
    ];

    $.ajax({
        url: home + '/PayerTransaction/PostCheckIfPayer',
        contentType: "application/json",
        type: "POST",
        data: JSON.stringify({
            application: 'aig_fee_base',
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