Процедура ПередУдалением(Отказ)
    Если ОбменДанными.Загрузка Или ДополнительныеСвойства.Свойство("НеПроверятьУникальность") Тогда
        Возврат;
    КонецЕсли;
    Отказ = ОбщийМодуль.ЕстьОтказ(ОбменДанными.Загрузка);
КонецПроцедуры

Процедура ПередЗаписью(Отказ) // Ошибка
    Если Отказ Тогда
        Сообщить("Это отказ");
    КонецЕсли;
КонецПроцедуры

Процедура ПриЗаписи(Отказ)
    Если ОбменДанными.Загрузка Тогда
        Возврат;
    КонецЕсли;
КонецПроцедуры

Procedure OnWrite(Cancel) // Ошибка
    Var Value;
    If DataExchange.Recipients Then
        Return;
    EndIf;
EndProcedure

Procedure BeforeWrite(Cancel)
    Var Value;
    If DataExchange.Load Then
        Return;
    EndIf;
EndProcedure

Procedure BeforeDelete(Cancel)
    For Each Item in new Array Do
        Return;
    EndDo;

    // Ошибка если ищем только первым
    If DataExchange.Load Then
        Return;
    EndIf;

EndProcedure