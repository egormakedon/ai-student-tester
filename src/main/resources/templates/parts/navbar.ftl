<#include "security.ftl">

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <a class="navbar-brand" href=<#if isAdmin>"/admin"<#else>"/"</#if>>
        <img src="/static/img/bsuir.png" width="30" height="30" class="d-inline-block align-top" alt="">
        <@spring.message "navbar.title"/>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/subjecttopic"><@spring.message "navbar.subject.topic"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/question"><@spring.message "navbar.questions"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/strategy"><@spring.message "navbar.strategy"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin/groupstudent"><@spring.message "navbar.group.student"/></a>
                </li>
            <#else>
                <li class="nav-item">
                    <a class="nav-link" href="/result"><@spring.message "navbar.result"/></a>
                </li>
            </#if>
        </ul>

        <#if isAdmin>
            <div class="dropdown">
                <button style="background-color: #044d58" class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${displayName}
                </button>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                    <form>
                        <a class="dropdown-item" href="/admin/profile"><@spring.message "navbar.profile"/></a>
                        <a class="dropdown-item" href="/admin/manage"><@spring.message "navbar.admin.manager"/></a>
                        <button class="dropdown-item" type="submit" formaction="/logout" formmethod="post"><@spring.message "navbar.log.out"/></button>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        <#else>
            <a style="background-color: #044d58" class="btn btn-primary" href="/login"><@spring.message "navbar.log.in"/></a>
        </#if>
    </div>
</nav>