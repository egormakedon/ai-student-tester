'use strict';

var hostname = "localhost:8080";

function ajaxGet(url, output) {
    $.ajax({
        type: 'GET',
        url: url,
        success: function(result) {
            output(result);
        }
    });
}

function ajaxPost(url, data, output) {
    $.ajax({
        type: 'POST',
        url: url,
        data: data,
        success: function(result) {
            output(result);
        }
    });
}