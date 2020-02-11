<#import "parts/common.ftlh" as c>

<@c.page>
    <div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <form class="form-inline" method="get" action="/main">
                    <input class="form-control mr-1" type="text" name="filter" value="${filter?ifExists}" placeholder="Select by tag">
                    <button class="btn btn-primary mx-1" type="submit">Found</button>
                </form>
            </div>
        </div>

        <a class="btn btn-primary" data-toggle="collapse" href="#collapseAddForm" role="button" aria-expanded="false" aria-controls="collapseExample">
            Add mew message
        </a>
        <div class="collapse" id="collapseAddForm">
            <div class="form-group mt-3">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input class="form-control" type="text" name="text" placeholder="Write your message">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" name="tag" placeholder="Tag">
                    </div>
                    <div class="custom-file">
                        <input class="form-control" type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Add file</label>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <div class="form-group mt-3">
                        <button class="btn btn-primary" type="submit">Send</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="card-columns">
        <#list messages as message>
            <div class="card m-2">
                <div class="card-body">
                    <#if message.filename??>
                        <img class="card-img-top" src="/img/${message.filename}">
                    </#if>

                    <span>${message.text}</span>

                    <i>${message.tag}</i>
                </div>
                <div class="card-footer text-muted" style="font-size: medium;">
                    <p>${message.authorName}</p>
                </div>
            </div>
        <#else>
            <h2>No messages</h2>
        </#list>
    </div>
</@c.page>