$(function () {
    $('input[id$=tb1]').keyup(function () {
        var txtClone = $(this).val();
        $('input[id$=tb2]').val(txtClone);
    });
});


