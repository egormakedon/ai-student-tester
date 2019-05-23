<#ftl encoding="UTF-8">

<#import "../parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "test.details.title">
    <div class="container mt-5">
        <div class="row">
            <div class="col-auto">
                <table class="table table-sm table-bordered table-striped">
                    <tbody>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.test.number"/></td>
                            <td>${testDetailsDto.testNumber}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.subject"/></td>
                            <td>${testDetailsDto.subject}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.group"/></td>
                            <td>${testDetailsDto.group}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.student"/></td>
                            <td>${testDetailsDto.student}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.student.ticket"/></td>
                            <td>${testDetailsDto.ticket}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.begin"/></td>
                            <td>${testDetailsDto.begin}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.end"/></td>
                            <td>${testDetailsDto.end}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.duration"/></td>
                            <td>${testDetailsDto.duration}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.mark"/></td>
                            <td>${testDetailsDto.mark}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="container">
        <#list testDetailsDto.questionList as question>
            <#assign rightAnswer = question.rightAnswer>
            <#assign answer = testDetailsDto.answerList[question_index]>
            <div class="row my-5">
                <div class="col">
                    <table class="table table-sm table-bordered table-<#if rightAnswer == answer>success<#else>danger</#if>">
                        <tr>
                            <td width="20%" style="text-align:center"><@spring.message "test.details.question.number"/>${question_index + 1}</td>
                            <td>${question.questionName}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.first.answer"/></td>
                            <td>${question.firstAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.second.answer"/></td>
                            <td>${question.secondAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.third.answer"/></td>
                            <td>${question.thirdAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.fourth.answer"/></td>
                            <td>${question.fourthAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.fifth.answer"/></td>
                            <td>${question.fifthAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.right.answer"/></td>
                            <td>${rightAnswer}</td>
                        </tr>
                        <tr>
                            <td style="text-align:center"><@spring.message "test.details.answer"/></td>
                            <td>${answer}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </#list>
    </div>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
</@c.page>