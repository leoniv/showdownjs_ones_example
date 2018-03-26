# ShowdownjsOnesExample

Репозиторий содержит пример использования разметки
[Markdown](http://daringfireball.net/projects/markdown/) в приложении
[1С](http://1c.ru)

По сути, решение является оберткой для [showdownjs](https://github.com/showdownjs/showdown)

## Исходный код

[showdownjs_ones_example.cf](showdownjs_ones_example.cf)

## Запуск примера

Для запуска необходимо окружение:

1. Ruby >= 2.0 (автор предпочитает Cygwin).
2. 1С:Предприятие ~> 8.3.9

Клонируйте репозиторий

    $git clone https://github.com/leoniv/showdownjs_ones_example.git && cd showdownjs_ones_example

Установите зависимости

    $bundler update

Запустите пример

    $bundler exec rake

Последняя команда:
- создаст базу
- запустит конфигуратор и предприятие

Для завершения работы закройте конфигуратор или нажмите `Ctrl-C`.

## Замечание

### Таблицы

`showdown.setOption('tables', true);` работае в web клиенте в Firefox. В тонком
клиенте в windows используется `IE` и конвертация таблиц вызывает ошибку.

# Have a lot of fun :)
