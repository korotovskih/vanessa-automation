﻿# encoding: utf-8
# language: ru



Функционал: Проверка загрузки фич из каталога
	Как Разработчик
	Я Хочу чтобы я мог без ошибок загрузить фичи из каталога
 

	Сценарий: Загрузка всех фич из каталога

	Когда я открыл форму VanessaBehavoir в режиме самотестирования
	И я создал служебный файл в относитекльном каталоге "features\Core" с именем "TestFile"
	И я загрузил фичи из относительного каталога "features\Core"
	Тогда ДеревоТестов заполнилось строками из фичи
	

