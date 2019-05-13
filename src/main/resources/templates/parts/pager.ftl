<#macro pager url page>
    <div>
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="<#if page.getNumber() == 0>${url}0<#else>${url}${page.getNumber() - 1}</#if>"><@spring.message "pager.prev"/></a>
                </li>

                <#if page.getTotalPages() == 0>
                    <li class="page-item">
                        <a class="page-link text-white bg-info" href="${url}0">1</a>
                    </li>
                <#else>
                    <#if page.getNumber() == 0>
                        <li class="page-item">
                            <a class="page-link text-white bg-info" href="${url}0">1</a>
                        </li>
                    <#else>
                        <#if page.getNumber() - 3 lte 1>
                            <#list 0 .. page.getNumber() - 1 as p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#list>
                        <#else>
                            <li class="page-item">
                                <a class="page-link text-white bg-secondary" href="${url}0">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                            </li>
                            <#list page.getNumber() - 3 .. page.getNumber() - 1 as p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#list>
                        </#if>

                        <li class="page-item">
                            <a class="page-link text-white bg-info" href="${url}${page.getNumber()}">${page.getNumber() + 1}</a>
                        </li>
                    </#if>

                    <#if page.getNumber() != page.getTotalPages() - 1>
                        <#if page.getNumber() + 3 gte page.getTotalPages() - 2>
                            <#list page.getNumber() + 1 .. page.getTotalPages() - 1 as p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#list>
                        <#else>
                            <#list page.getNumber() + 1 .. page.getNumber() + 3 as p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#list>
                            <li class="page-item">
                                <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                            </li>
                            <li class="page-item">
                                <a class="page-link text-white bg-secondary" href="${url}${page.getTotalPages() - 1}">${page.getTotalPages()}</a>
                            </li>
                        </#if>
                    </#if>
                </#if>

                <#if page.getTotalPages() == 0>
                    <li class="page-item">
                        <a class="page-link" href="${url}0"><@spring.message "pager.next"/></a>
                    </li>
                <#else>
                    <li class="page-item">
                        <a class="page-link" href="<#if page.getNumber() == page.getTotalPages() - 1>${url}${page.getNumber()}<#else>${url}${page.getNumber() + 1}</#if>"><@spring.message "pager.next"/></a>
                    </li>
                </#if>
            </ul>
        </nav>
    </div>
</#macro>