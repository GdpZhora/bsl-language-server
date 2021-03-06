# Часто задаваемые вопросы

В данном разделе собраны наиболее часто возникающие вопросы и ответы на них.

## Как изменить язык диагностических сообщений?

Для изменения языка выводимых сообщений с русского (по умолчанию) на английский можно с помощью конфигурационного файла. О возможностях конфигурирования можно узнать в [описании конфигурационного файла](features/ConfigurationFile.md)

## Как увеличить максимальную длину строки в диагностике `Ограничение на длину строки`?

Все диагностики имеет страницу с описанием в разделе `Диагностики`, например интересующая [Ограничение на длину строки](diagnostics/LineLength.md). Если диагностика может менять свое поведение, то на странице с описанием будут присутствовать параметры с описанием, на что они влияют. В данном случае - параметр `maxLineLength` как раз и отвечает за максимальную длину строки.

## Как отключить Lens о когнитивной сложности?

Для отключения `линзы` с информацией о когнитивной сложности стоит воспользоваться конфигурационным файлом, в котором для параметра `showCognitiveComplexity` установить значение `false`. О возможностях конфигурирования можно узнать в [описании конфигурационного файла](features/ConfigurationFile.md)

## Я считаю, что диагностика работает неправильно. Что делать?

В случае сомнения (или уверенности) в том, что диагностика работает неверно есть два пути

- обратиться в чате [telegram](https://t.me/bsl_language_server) с ситуацией, возможно все-таки ошибки нет
- создать ишью ([issue](https://github.com/1c-syntax/bsl-language-server/issues)) в репозитории проекта соответствующего типа, куда приложить описание ошибки и, очень желательно, примеры кода, где диагностика работает неверно.

## `BSL Language Server` и `SonarQube` плагин это одно и тоже?

`BSL Language Server` является самостоятельным приложением, реализацией серверной части протокола LSP. Плагин для `SonarQube` использует `BSL Language Server` для выполнения анализа исходного кода языка BSL (конфигурации 1С, скрипты 1Script и 1Script.Web).

`BSL Language Server` может быть использован с любым приложением, имеющим реализацию LSP клиента. Проверенные подключения:

* плагин для [VS code](https://github.com/1c-syntax/vsc-language-1c-bsl/);
* дополнительная утилита для Конфигуратора [Phoenix BSL](https://github.com/otymko/phoenixbsl);
* плагин для [Sublime Text](https://github.com/sublimelsp/LSP).

Так же через прямой импорт `BSL Language Server` работают:

* плагин для [1C:Enterprise development tools](https://github.com/DoublesunRUS/ru.capralow.dt.bslls.validator) (собственная реализация, без LSP);
* плагин для [SonarQube](https://github.com/1c-syntax/sonar-bsl-plugin-community);
