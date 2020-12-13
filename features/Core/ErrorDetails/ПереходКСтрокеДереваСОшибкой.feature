﻿# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA11_запускать_сценарии_на_выполнение

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@SingleCodeCoverage

@tree


Функционал: Переход из деталей ошибки к строке дерева, когда не используется редактор сценариев

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'

Сценарий: Переход из деталей ошибки к строке дерева, когда не используется редактор сценариев
	* Загрузка тестовой фичи
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДеталиОшибки/ДеталиОшибки02"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Запуск сценария
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	* Переход в детали ошибки с помощью строки сценария
		И Пауза 1
		//Затем клик на картинку "ДеталиОшибки"
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Элементы.VanessaEditor.Document.defaultView.document.querySelector(\".vanessa-error-links>a\").click()'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		
				
		
	* Переход к строке дерева	
		Тогда открылось окно 'Детали ошибки'
		И я нажимаю на кнопку с именем 'ФормаПерейтиКСтрокеДереваСОшибкой'

	* Проверка результата. Текущей строкой должна быть строка номер 4.					
		И Пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
				
		И в таблице 'ДеревоТестов' поле с именем 'ДеревоТестовИДСтроки' имеет значение '4'

		И я закрываю сеанс текущего клиента тестирования
		


		



		