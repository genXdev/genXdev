# Get-WebbrowserTabDomNodes

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wl

## Synopsis

> Запрашивает и управляет узлами DOM в активной вкладке браузера с помощью CSS-селекторов.

## Description

Использует автоматизацию браузера для поиска элементов, соответствующих CSS-селектору, и возвращает их HTML-содержимое или выполняет пользовательский JavaScript на каждом найденном элементе. Эта функция полезна для веб-скрапинга и задач автоматизации браузера.

## Syntax

```powershell
Get-WebbrowserTabDomNodes -QuerySelector <String[]> [[-ModifyScript] <String>] [-ByReference <PSObject>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-NoAutoSelectTab] [-Page <Object>] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-QuerySelector` | String[] | ✅ | — | 0 | — | Строка или массив строк запроса для выбора узлов DOM |
| `-ModifyScript` | String | — | — | 1 | `''` | The script to modify the output of the query selector, e.g. e.outerHTML or e.outerHTML='hello world' |
| `-Edge` | SwitchParameter | — | — | Named | — | Используйте браузер Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Используйте браузер Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Используйте Microsoft Edge или Google Chrome, в зависимости от того, какой браузер является браузером по умолчанию |
| `-Firefox` | SwitchParameter | — | — | Named | — | Используйте браузер Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Используйте браузер WebKit, управляемый Playwright |
| `-Page` | Object | — | — | Named | — | Ссылка на объект страницы браузера для нацеливания на конкретную вкладку |
| `-ByReference` | PSObject | — | — | Named | — | Объект ссылки на сессию браузера для повторного использования существующей сессии браузера |
| `-NoAutoSelectTab` | SwitchParameter | — | — | Named | — | Предотвратить автоматический выбор вкладок |

## Examples

### Get HTML of all header divs Get-WebbrowserTabDomNodes -QuerySelector "div.header"

```powershell
Get HTML of all header divs
Get-WebbrowserTabDomNodes -QuerySelector "div.header"
```

### Pause all videos on the page wl "video" "e.pause()"

```powershell
Pause all videos on the page
wl "video" "e.pause()"
```

## Related Links

- [Get-WebbrowserTabDomNodes on GitHub](https://github.com/genXdev/genXdev)
