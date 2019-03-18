'use strict';

function getStudentList() {
    let studentGroupSelector = document.getElementById('studentGroupSelectorID');
    let studentSelector = document.getElementById('studentSelectorID');

    // TODO Remove &nbsp
    let url = '/ajax/studentList/' + studentGroupSelector.value;

    ajaxGet(url, function(result) {
        $('#studentSelectorID').children('option:not(:first)').remove();

        if (!jQuery.isEmptyObject(result)) {
            for (let i = 0; i < result.length; i++) {
                let option = document.createElement('option');

                // TODO Add name attribute
                // TODO Refactor text
                option.text = result[i].firstName + ' ' + result[i].lastName;

                studentSelector.add(option);
            }
        }
    });
}