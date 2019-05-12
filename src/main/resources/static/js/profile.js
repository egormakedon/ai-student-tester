var csrf = document.getElementById('csrfID');
var confirmationMessage = document.getElementById('confirmationMessageID');

function ajaxRemoveProfile() {
    let confirmation = confirm(confirmationMessage.value);

    if (confirmation) {
        let data = {
            _csrf: csrf.value
        };

        ajaxPost('/admin/profile/ajax/remove', data, function (result) {
            location.replace(hostname + "/");
        });
    }
}