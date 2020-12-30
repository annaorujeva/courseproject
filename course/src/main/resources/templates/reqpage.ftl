<#import "parts/common.ftl" as c>
<@c.page>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/" class="text-info">Главная</a></li>
        <li class="breadcrumb-item"><a href="/main" class="text-info">Учет ПО</a></li>
        <li class="breadcrumb-item active" aria-current="page">Выбор запроса</li>
    </ol>
</nav>
<div class="list-group m-4">
    <ul><a href="/searchpcbyid" class="list-group-item list-group-item-action">Найти компьютер по id</a></ul>
    <ul><a href="/searchprog" class="list-group-item list-group-item-action">Найти установленную на ПК программу</a></ul>
</div>
</@c.page>