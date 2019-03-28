'use strict';

var hostname = "";

function ajaxGet(url, output) {
    $.ajax({
        type: 'GET',
        url: hostname + url,
        success: function(result) {
            output(result);
        }
    });
}

function ajaxPost(url, data, output) {
    $.ajax({
        type: 'POST',
        url: hostname + url,
        data: data,
        success: function(result) {
            output(result);
        }
    });
}