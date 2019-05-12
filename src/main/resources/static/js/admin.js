'use strict';

function getStudentList() {
    $('#studentSelectorID').children('option:not(:first)').remove();

    let studentSelector = document.getElementById('studentSelectorID');
    let studentGroupNumber = +$('#studentGroupSelectorID option:selected').text().split(/\s/).join('');

    if (!isNaN(studentGroupNumber)) {
        let url = '/admin/ajax/studentList/' + studentGroupNumber;

        ajaxGet(url, function(result) {
            if (!jQuery.isEmptyObject(result)) {
                for (let i = 0; i < result.length; i++) {
                    let option = document.createElement('option');

                    option.text = result[i].lastName + ' ' + result[i].firstName[0] + '.' + result[i].middleName[0] + '.';
                    option.setAttribute('value', result[i].studentID);

                    studentSelector.add(option);
                }
            }
        });
    }
}

function setInputValues() {
    $("input[name='studentGroupID']").val($('#studentGroupSelectorID option:selected').attr('value'));
    $("input[name='studentID']").val($('#studentSelectorID option:selected').attr('value'));
}