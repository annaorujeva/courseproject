<#import "parts/common.ftl" as c>

<@c.page>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/adminpage" class="text-info">Редактирование БД</a></li>
        <li class="breadcrumb-item"><a href="/user" class="text-info">Список пользователей</a></li>
        <li class="breadcrumb-item active" aria-current="page">Редактирование пользователя</li>
    </ol>
</nav>
<form action="/user" method="post">
    <div class="m-4">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Изменить имя пользователя:</label>
        <div class="col-sm-3">
            <input type="text" name="username" value="${user.username}" class="form-control">
        </div>
        </label>
    </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Назначить роль:</label>
                <#list roles as role>
                <div>
                    <label class="p-3"><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked",
                        "")}>${role}</label>
                </div>
            </#list>
            <input type="hidden" value="${user.id}" name="userId">
    </div>
        <div class="form-group row" align="left">
            <div class="col-sm-7">
                <button type="submit" class="btn btn-info col-sm-3">Сохранить</button>
            </div>
        </div>
    </div>
</form>
</@c.page>