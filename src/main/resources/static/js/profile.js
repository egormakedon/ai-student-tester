'use strict';

var csrf = document.getElementById('csrfID');

function ajaxRemoveProfile() {
    let data = {
        _csrf: csrf.value
    };

    ajaxPost('/admin/profile/ajax/remove', data, function (result) {
        location.replace(hostname + "/");
    });
}