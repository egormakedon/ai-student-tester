<#macro confirmationModal id title body additionalMessage function>
    <div class="modal fade" id="${id}" tabindex="-1" role="dialog" aria-labelledby="confirmationModalTitleID" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmationModalTitleID"><@spring.message "${title}"/></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <@spring.message "${body}"/>${additionalMessage}
                </div>
                <div class="modal-footer">
                    <button style="background-color: #044d58" type="button" class="btn btn-primary" onclick="${function}"><@spring.message "confirmation.modal.ok"/></button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><@spring.message "confirmation.modal.cancel"/></button>
                </div>
            </div>
        </div>
    </div>
</#macro>