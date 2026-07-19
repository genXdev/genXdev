# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает коллекцию установленных современных веб-браузеров.

## Description

* Обнаруживает и возвращает информацию о современных веб-браузерах, установленных в системе.
* Извлекает информацию, включая имя, описание, путь к значку, путь к исполняемому файлу и статус браузера по умолчанию, путем запроса реестра Windows.
* Возвращает только браузеры, которые имеют необходимые возможности, зарегистрированные в Windows.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Выбирает экземпляры браузера Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Выбирает экземпляры браузера Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Выбирает браузер на основе Chromium по умолчанию *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Выбирает экземпляры браузера Firefox *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Возвращает коллекцию всех установленных современных веб-браузеров.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Фильтры для отображения только системного браузера по умолчанию.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
