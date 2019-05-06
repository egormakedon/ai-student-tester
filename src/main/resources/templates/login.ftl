<#ftl encoding="UTF-8">

<#import "parts/common.ftl" as c>
<#import "/spring.ftl" as spring>

<@c.page "log.in.title">
    <form method="post">
        <div class="container mt-5">
            <div class="form-group row align-items-center justify-content-center">
                <div class="col-3">
                    <input class="form-control" type="text" name="username" placeholder="<@spring.message "log.in.username"/>">
                </div>
            </div>
            <div class="form-group row align-items-center justify-content-center">
                <div class="col-3">
                    <input class="form-control" type="password" name="password" placeholder="<@spring.message "log.in.password"/>">
                </div>
            </div>
            <div class="form-group row align-items-center justify-content-center">
                <div class="col-3">
                    <button style="background-color: #044d58" class="btn btn-primary btn-md" type="submit"><@spring.message "log.in.button"/></button>
                </div>
            </div>
        </div>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

    <script src="/static/js/jquery.js"></script>
    <script src="/static/js/popper.js"></script>
    <script src="/static/js/bootstrap.js"></script>
</@c.page>