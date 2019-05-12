<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
        applicationUser = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        displayName = applicationUser.getDisplayName()
        isAdmin = applicationUser.isAdmin()
    >
<#else>
    <#assign
        isAdmin = false
    >
</#if>