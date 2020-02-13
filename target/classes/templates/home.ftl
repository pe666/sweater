<#import "parts/common.ftl" as c>

<@c.page>
<form method="get" action="home">
    <div class="input-group mb-3">
        <input value="${filter!}" type="text" class="form-control" placeholder="Find by tag" aria-label="Recipient's username" aria-describedby="button-addon2" name="filter">
        <div class="input-group-append">
            <button class="btn btn-dark" type="submit" id="button-addon2">Search</button>
        </div>
    </div>
</form>
<a class="btn btn-dark my-3" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse <#if message??>show</#if>" id="collapseExample">
    <form method="post" enctype="multipart/form-data">
        <div class="form-group">
            <input class="form-control ${(textError??)?string('is-invalid', '')}" type="text"
                   value="<#if message??>${message.text}</#if>" name="text" placeholder="Message">
            <#if textError??>
            <div class="invalid-feedback">
                ${textError}
            </div>
            </#if>
            <input class="form-control ${(tagError??)?string('is-invalid', '')}" type="text"
                   value="<#if message??>${message.tag}</#if>" name="tag" placeholder="#tag">
            <#if tagError??>
                <div class="invalid-feedback">
                    ${tagError}
                </div>
            </#if>
            <div class="custom-file">
                <input class="form-control custom-file-input" type="file" name="file" id="customFile">
                <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn btn-dark">Add message</button>
        </div>
    </form>
</div>
<div class="card-columns">
<#list messages as message>
<div class="card" style="width: 18rem;">
    <div>
        <#if message.filename??>
        <img class="card-img-top" src="/img/${message.filename}">
    </#if>
    </div>
    <div class="card-body">
        <span class="card-text">${message.text}</span>
        <i>#${message.tag}</i>
        <div class="card-footer text-muted">
            @${message.authorName}
        </div>

    </div>

</div>
<#else>
No messages
</#list>
</div>
</@c.page>