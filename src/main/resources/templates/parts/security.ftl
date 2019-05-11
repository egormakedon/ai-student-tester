<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
        applicationUser = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        isAdmin = applicationUser.isAdmin()
        displayName = applicationUser.getDisplayName()
    >
<#else>
    <#assign
        isAdmin = false
    >
</#if>