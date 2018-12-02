var questionNumber = document.getElementById('questionNumberId');
var answer = document.getElementById('answerId');
var csrf = document.getElementById('csrfId');

var prevButton = document.getElementById('prevButtonId');
var nextButton = document.getElementById('nextButtonId');

function setAnswerToRadioButton() {
    switch (answer.value) {
        case '-':
            return;
        case '1':
            $('#answerRadioButtonId1').prop("checked", true);

            break;
        case '2':
            $('#answerRadioButtonId2').prop("checked", true);

            break;
        case '3':
            $('#answerRadioButtonId3').prop("checked", true);

            break;
        case '4':
            $('#answerRadioButtonId4').prop("checked", true);

            break;
        case '5':
            $('#answerRadioButtonId5').prop("checked", true);

            break;
    }
}

function answerRadioButton1Change() {
    answer.value = '1';
    ajaxUpdateAnswer();
}

function answerRadioButton2Change() {
    answer.value = '2';
    ajaxUpdateAnswer();
}

function answerRadioButton3Change() {
    answer.value = '3';
    ajaxUpdateAnswer();
}

function answerRadioButton4Change() {
    answer.value = '4';
    ajaxUpdateAnswer();
}

function answerRadioButton5Change() {
    answer.value = '5';
    ajaxUpdateAnswer();
}

function ajaxUpdateAnswer() {
    let data = {
      answer : answer.value,
      _csrf : csrf.value
    };

    ajaxPost('/tester/ajax/updateAnswer', data, function(result) {
    });
}

function prevButtonClick() {
    if(questionNumber.value === "1") {
        return;
    }

    let data = {
        _csrf : csrf.value
    };

    ajaxPost('/tester/ajax/prevQuestion', data, function(result) {
    });

    //TODO decrement questionNumber ?
}

function nextButtonClick() {
    if(questionNumber.value === "20") {
        return;
    }

    let data = {
        _csrf : csrf.value
    };

    ajaxPost('/tester/ajax/nextQuestion', data, function(result) {
    });

    //TODO increment questionNumber ?
}

$(document).ready(function() {
    setAnswerToRadioButton();
});