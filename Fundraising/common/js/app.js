$(document).ready(function () {
    //BindJQuery();
});

function pageLoad() {
    BindJQuery();
}

function SetDonateNowButtonText(decOriginalAmount) {
    var decNewAmount = decOriginalAmount;

    if ($("#chkCoverFees").is(":checked") == true) {
        decNewAmount = decNewAmount * 1.035
    }

    decNewAmount = decNewAmount.toFixed(2);

    if ($("#rbnDonateMonthly").is(":checked") == true)
        $("#btnDonateNow").val("Donate Now: $" + decNewAmount + " per month");
    else
        $("#btnDonateNow").val("Donate Now: $" + decNewAmount);
   
    
}

function BindJQuery() {
    // Toogle Div Layer When Checked
    $("#divPerMonth1").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel1").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").toggleClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").toggleClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked1').change(
        function () {
            $("#divPerMonth1").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth2").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel2").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);     

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").toggleClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").toggleClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked2').change(
        function () {
            $("#divPerMonth2").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth3").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel3").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);        

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").toggleClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").toggleClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked3').change(
        function () {
            $("#divPerMonth3").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth4").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel4").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").toggleClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").toggleClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked4').change(
        function () {
            $("#divPerMonth4").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth5").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel5").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").toggleClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").toggleClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked5').change(
        function () {
            $("#divPerMonth5").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth6").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel6").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").toggleClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").toggleClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked6').change(
        function () {
            $("#divPerMonth6").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth7").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel7").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").toggleClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');


            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").toggleClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked7').change(
        function () {
            $("#divPerMonth7").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth8").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel8").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").toggleClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").toggleClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked8').change(
        function () {
            $("#divPerMonth8").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth9").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel9").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").toggleClass('divChecked');
            $("#divPerMonth10").removeClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").toggleClass('selected-color');
            $("#divSelectedPanel10").removeClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked9').change(
        function () {
            $("#divPerMonth9").toggleClass('divChecked');
        }
    );

    // Toogle Div Layer When Checked
    $("#divPerMonth10").click(function (e) {
        if (e.target.tagName != 'INPUT') {
            var strAmountLabelText = $("#lblDonationAmountCheckboxLabel10").text();
            var strAmount = strAmountLabelText.replace("$", "").replace("per month", "").trim();

            SetDonateNowButtonText(strAmount);          

            $("#txtDonationAmount").val(strAmount);

            $("#divPerMonth1").removeClass('divChecked');
            $("#divPerMonth2").removeClass('divChecked');
            $("#divPerMonth3").removeClass('divChecked');
            $("#divPerMonth4").removeClass('divChecked');
            $("#divPerMonth5").removeClass('divChecked');
            $("#divPerMonth6").removeClass('divChecked');
            $("#divPerMonth7").removeClass('divChecked');
            $("#divPerMonth8").removeClass('divChecked');
            $("#divPerMonth9").removeClass('divChecked');
            $("#divPerMonth10").toggleClass('divChecked');

            $("#divSelectedPanel1").removeClass('selected-color');
            $("#divSelectedPanel2").removeClass('selected-color');
            $("#divSelectedPanel3").removeClass('selected-color');
            $("#divSelectedPanel4").removeClass('selected-color');
            $("#divSelectedPanel5").removeClass('selected-color');
            $("#divSelectedPanel6").removeClass('selected-color');
            $("#divSelectedPanel7").removeClass('selected-color');
            $("#divSelectedPanel8").removeClass('selected-color');
            $("#divSelectedPanel9").removeClass('selected-color');
            $("#divSelectedPanel10").toggleClass('selected-color');
            return false;
        }
    });
    // Toogle checkbox
    $('#defaultChecked10').change(
        function () {
            $("#divPerMonth10").toggleClass('divChecked');
        }
    );
    $.fn.toggleCheckbox = function () {
        this.attr('checked', !this.attr('checked'));
    }

    $.fn.clearCheckbox = function () {
        this.attr('checked', false);
    }

    $.fn.clearClass = function () {
        this.attr('checked', false);
    }
}