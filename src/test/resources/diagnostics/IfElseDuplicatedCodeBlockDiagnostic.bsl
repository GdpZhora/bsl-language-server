
// Pass (is catched by another diagnostic)
Если ПараметрКоманды.Количество() = 0 Тогда
ИначеЕсли ПараметрКоманды.Количество() = 1 Тогда
Иначе
КонецЕсли;

// Error
Если ПараметрКоманды.Количество() = 0 Тогда
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	Возврат;
Иначе
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	Возврат;
КонецЕсли;

// Pass
Если ПараметрКоманды.Количество() = 0 Тогда
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
Иначе
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	Возврат;
КонецЕсли;

// Error
Если ПараметрКоманды.Количество() = 0 Тогда
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	Возврат;
ИначеЕсли ПараметрКоманды.Количество() = 1 Тогда
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	Возврат;
Иначе
	ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
КонецЕсли;

// Error
Если ТипЗнч(ПараметрКоманды) = Тип("Массив") Тогда

	//Error
	Если ПараметрКоманды.Количество() = 0 Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	ИначеЕсли ПараметрКоманды.Количество() = 1 Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	Иначе
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	КонецЕсли;

Иначе

	// Error
	Если ПараметрКоманды.Количество() = 0 Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	ИначеЕсли ПараметрКоманды.Количество() = 1 Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	Иначе
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
	КонецЕсли;

КонецЕсли;

// Pass
Если ТипЗнч(ПараметрКоманды) = Тип("Массив") Тогда

	Если ПараметрКоманды.Количество() = 0 Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	КонецЕсли;

	Если ПараметрКоманды.Количество() = 1 И ТипЗнч(ПараметрКоманды[0]) = Тип("СтрокаГруппировкиДинамическогоСписка") Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	КонецЕсли;

	ЧислоЗадач = БизнесПроцессыИЗадачиВызовСервера.КоличествоНевыполненныхЗадачБизнесПроцессов(ПараметрКоманды);
	Если ПараметрКоманды.Количество() = 1 Тогда
		ТекстВопроса = СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
			НСтр("ru = 'Бизнес-процесс ""%1"" и все его задачи (%2) будут сделаны активными. Продолжить?'"),
			Строка(ПараметрКоманды[0]), ЧислоЗадач);
	Иначе
		ТекстВопроса = СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
			НСтр("ru = 'Бизнес-процессы (%1) и их задачи (%2) будут сделаны активными. Продолжить?'"),
			ПараметрКоманды.Количество(), ЧислоЗадач);
	КонецЕсли;

Иначе

	Если ТипЗнч(ПараметрКоманды) = Тип("СтрокаГруппировкиДинамическогоСписка") Тогда
		ПоказатьПредупреждение(,НСтр("ru= 'Не выбран ни один бизнес-процесс.'"));
		Возврат;
	КонецЕсли;

	ЧислоЗадач = БизнесПроцессыИЗадачиВызовСервера.КоличествоНевыполненныхЗадачБизнесПроцесса(ПараметрКоманды);
	ТекстВопроса = СтроковыеФункцииКлиентСервер.ПодставитьПараметрыВСтроку(
		НСтр("ru = 'Бизнес-процесс ""%1"" и все его задачи (%2) будут сделаны активными. Продолжить?'"),
		Строка(ПараметрКоманды), ЧислоЗадач);

КонецЕсли;


