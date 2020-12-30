<#import "parts/common.ftl" as c>
<@c.page>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item active" aria-current="page">Редактирование БД</li>
    </ol>
</nav>
<div class="list-group m-4">
    <ul><a href="/user" class="list-group-item list-group-item-action">Список пользователей</a></ul>
    <ul><a href="/addpc" class="list-group-item list-group-item-action">Добавить компьютер в систему</a></ul>
    <ul><a href="/addprog" class="list-group-item list-group-item-action">Добавить программу в систему</a></ul>
</div>
</@c.page>