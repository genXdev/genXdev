# Get-DefaultWebbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает настроенный веб-браузер по умолчанию для текущего пользователя.

## Description

* Извлекает информацию о браузере по умолчанию в системе путем запроса
  реестра Windows.
* Возвращает хеш-таблицу, содержащую имя браузера, описание, путь к
  значку и путь к исполняемому файлу.
* Функция проверяет как пользовательские настройки, так и общесистемные
  регистрации браузеров для определения браузера по умолчанию.

## Syntax

```powershell
Get-DefaultWebbrowser [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-DefaultWebbrowser | Format-List
```

Получить подробную информацию о браузере по умолчанию.

### Example 2

```powershell
$browser = Get-DefaultWebbrowser
& $browser.Path https://www.github.com/
```

Запустите браузер по умолчанию с указанным URL.

## Related Links

- [Get-DefaultWebbrowser on GitHub](https://github.com/genXdev/genXdev)
