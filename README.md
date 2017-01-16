# ShowdownjsOnesExample

Репозиторий содержит пример использования разметки
[Markdown](http://daringfireball.net/projects/markdown/) в приложении
[1С](http://1c.ru)

По сути, решение является оберткой для [showdownjs](https://github.com/showdownjs/showdown)

## Исходный код

[showdownjs_ones_example.cf](showdownjs_ones_example.cf)

## Запуск примера

Для запуска необходимо окружение:

1. Windows
2. Ruby > 2.1 (желательно Cygwin).

Клонируйте репозиторий

    $git clone FIXME

Установите зависимости

    $bundler update

Запустите пример

    $bundler exec rake test

Последняя команда:
- создаст базу
- запустит конфигуратор и предприятие

Для завершения работы закройте конфигуратор.

# Have a lot of fun :)
