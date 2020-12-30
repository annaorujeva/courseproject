<#import "parts/common.ftl" as c>

<@c.page>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item"><a href="/adminpage" class="text-info">Редактирование БД</a></li>
        <li class="breadcrumb-item active" aria-current="page">Список пользователей</li>
    </ol>
</nav>
<form method="get">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
<div class="m-4">
    <table class="table table-bordered">
        <thead>
        <h5 align="center">
            <th><h5 class="font-weight-light" align="center">Имя пользователя</th></h5>
            <th><h5 class="font-weight-light" align="center">Роли пользователя</th></h5>
            <th><h5 class="font-weight-light" align="center">Редактировать</th></h5>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td align="center"><a class="text-info" href="/user/${user.id}">изменить</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>
</form>
</@c.page>