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
                <#elseif page.getTotalPages() lte 5>
                    <#list 0 .. page.getTotalPages() - 1 as p>
                        <#if page.getNumber() == p>
                            <li class="page-item">
                                <a class="page-link text-white bg-info" href="${url}${p}">${p + 1}</a>
                            </li>
                        <#else>
                            <li class="page-item">
                                <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                            </li>
                        </#if>
                    </#list>
                <#else>
                    <#if page.getNumber() lt 2>
                        <#list 0 .. 2 as p>
                            <#if page.getNumber() == p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-info" href="${url}${p}">${p + 1}</a>
                                </li>
                            <#else>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#if>
                        </#list>
                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}${page.getTotalPages() - 1}">${page.getTotalPages()}</a>
                        </li>
                    <#elseif page.getNumber() == 2>
                        <#list 0 .. 3 as p>
                            <#if page.getNumber() == p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-info" href="${url}${p}">${p + 1}</a>
                                </li>
                            <#else>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#if>
                        </#list>
                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}${page.getTotalPages() - 1}">${page.getTotalPages()}</a>
                        </li>
                    <#elseif page.getNumber() gt 2 && page.getNumber() lte page.getTotalPages() - 4>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}0">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>

                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}${page.getNumber() - 1}">${page.getNumber()}</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link text-white bg-info" href="${url}${page.getNumber()}">${page.getNumber() + 1}</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}${page.getNumber() + 1}">${page.getNumber() + 2}</a>
                        </li>

                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}${page.getTotalPages() - 1}">${page.getTotalPages()}</a>
                        </li>
                    <#elseif page.getNumber() == page.getTotalPages() - 3>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}0">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>

                        <#list page.getTotalPages() - 4 .. page.getTotalPages() - 1 as p>
                            <#if page.getNumber() == p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-info" href="${url}${p}">${p + 1}</a>
                                </li>
                            <#else>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#if>
                        </#list>
                    <#elseif page.getNumber() gt page.getTotalPages() - 3>
                        <li class="page-item">
                            <a class="page-link text-white bg-secondary" href="${url}0">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#"><@spring.message "pager.empty"/></a>
                        </li>

                        <#list page.getTotalPages() - 3 .. page.getTotalPages() - 1 as p>
                            <#if page.getNumber() == p>
                                <li class="page-item">
                                    <a class="page-link text-white bg-info" href="${url}${p}">${p + 1}</a>
                                </li>
                            <#else>
                                <li class="page-item">
                                    <a class="page-link text-white bg-secondary" href="${url}${p}">${p + 1}</a>
                                </li>
                            </#if>
                        </#list>
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