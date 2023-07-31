        $(".numeric").numeric();
        $(".integer").numeric(false, function () {this.value = ""; this.focus(); });
        $(".positive").numeric({ negative: false }, function () {this.value = ""; this.focus(); });
        $(".positive-integer").numeric({ decimal: false, negative: false }, function () {this.value = ""; this.focus(); });
        $("#remove").click(
		function (e) {
		    e.preventDefault();
		    $(".numeric,.integer,.positive").removeNumeric();
		}
	);
