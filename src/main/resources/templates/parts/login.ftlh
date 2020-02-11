<#macro login path isRegisterForm>
    <div class="row justify-content-md-center">
        <div  class="card" style="width: 400px;">
            <div class="card-body">
                <form action="${path}" method="post"">
                <#if !isRegisterForm>
                <h3 class="card-title text-center">Log in</h3>
                <#else>
                    <h3 class="card-title text-center">Registration</h3>
                </#if>
                <div class="form-group">
                    <div>
                        <label class="col-sm-6 col-form-label" for="UserNameInput">Login:</label>
                    </div>
                    <div class="col">
                        <input class="form-control" type="text" name="username" id="UserNameInput" placeholder="User Name"/>
                    </div>
                </div>
                <#if isRegisterForm>
                    <div class="form-group">
                        <div>
                            <label class="col-sm-6 col-form-label">Email:</label>
                        </div>
                        <div class="col">
                            <input class="form-control" type="email" name="email" placeholder="Your@email.com"/>
                        </div>
                    </div>
                </#if>
                <div class="form-group">
                    <div>
                        <label class="col-sm-6 col-form-label">Password:</label>
                    </div>
                    <div class="col">
                        <input class="form-control" type="password" name="password" placeholder="Password"/>
                    </div>
                </div>
                <div class="nav justify-content-center">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                    <div class="mt-1 mx-1">
                        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Create<#else>Sign in</#if></button>
                    </div>
                    <#if !isRegisterForm>
                        <div class="mt-1 mx-1">
                            <a role="button" class="btn btn-success" href ="/registration">Registration</a>
                        </div>
                    </#if>
                </div>
                </form>
            </div>
        </div>
    </div>
</#macro>

<#macro logout>
    <form method="post" action="/logout">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Sign Out</button>
    </form>
</#macro>
