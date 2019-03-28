var csrf = document.getElementById('csrfID');
var answer = document.getElementById('answerID');

function setAnswerToRadioButton() {
    switch (answer.value) {
        case '0':
            return;
        case '1':
            $('#answer1ID').prop("checked", true);
            break;
        case '2':
            $('#answer2ID').prop("checked", true);
            break;
        case '3':
            $('#answer3ID').prop("checked", true);
            break;
        case '4':
            $('#answer4ID').prop("checked", true);
            break;
        case '5':
            $('#answer5ID').prop("checked", true);
            break;
    }
}

function answer1Change() {
    answer.value = '1';
    ajaxUpdateAnswer();
}

function answer2Change() {
    answer.value = '2';
    ajaxUpdateAnswer();
}

function answer3Change() {
    answer.value = '3';
    ajaxUpdateAnswer();
}

function answer4Change() {
    answer.value = '4';
    ajaxUpdateAnswer();
}

function answer5Change() {
    answer.value = '5';
    ajaxUpdateAnswer();
}

function ajaxUpdateAnswer() {
    let data = {
        answer: answer.value,
        _csrf: csrf.value
    };

    ajaxPost('/test/ajax/update', data, function (result) {
        location.reload();
    });
}

$(document).ready(function() {
    setAnswerToRadioButton();
});