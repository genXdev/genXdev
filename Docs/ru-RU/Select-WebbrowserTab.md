# Select-WebbrowserTab

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `st

## Synopsis

> Выбирает вкладку браузера из работающих браузеров, управляемых Playwright.

## Description

Выводит список вкладок и позволяет выбирать их из всех запущенных экземпляров браузера, управляемых Playwright. При вызове без критериев отбора отображает таблицу всех доступных вкладок для всех типов браузеров. Поддерживает выбор по числовому индексу, шаблону URL или прямой ссылке на страницу.

При выборе вкладки устанавливаются $Global:chromeController и $Global:chromeSession для обратной совместимости с другими командлетами Webbrowser.

## Syntax

```powershell
Select-WebbrowserTab [[-Id] <Int32>] [<CommonParameters>]

Select-WebbrowserTab -Name <String> [<CommonParameters>]

Select-WebbrowserTab -ByReference <Object> [<CommonParameters>]

Select-WebbrowserTab [-All] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Force] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Id` | Int32 | — | — | 0 | `-1` | Индекс вкладки из показанного списка *(Parameter set: )* |
| `-Name` | String | ✅ | — | 0 | — | Выбирает первую вкладку, содержащую этот текст в её URL *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ByReference` | Object | ✅ | — | Named | — | Прямая ссылка на страницу из состояния браузера Playwright *(Parameter set: )* |
| `-Edge` | SwitchParameter | — | — | Named | — | Фильтровать вкладки для экземпляров браузера Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Фильтровать вкладки до экземпляров браузера Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Фильтровать вкладки для экземпляров браузеров на основе Chromium (Edge или Chrome) |
| `-Firefox` | SwitchParameter | — | — | Named | — | Фильтровать вкладки к экземплярам браузера Firefox |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Фильтр вкладок по всем типам браузеров, управляемым Playwright |
| `-Webkit` | SwitchParameter | — | — | Named | — | Фильтровать вкладки для экземпляров браузера WebKit |
| `-All` | SwitchParameter | — | — | Named | — | Показать вкладки из всех типов браузеров (без фильтрации) |
| `-Force` | SwitchParameter | — | — | Named | — | Пропустить подтверждение и выбрать первую подходящую вкладку |

## Examples

### Select-WebbrowserTab Lists all open tabs across all Playwright browser types.

```powershell
Select-WebbrowserTab
Lists all open tabs across all Playwright browser types.
```

### Select-WebbrowserTab -Id 2 Selects the tab at index 2 from the list.

```powershell
Select-WebbrowserTab -Id 2
Selects the tab at index 2 from the list.
```

### st -Name "github.com" Selects the first tab whose URL contains "github.com".

```powershell
st -Name "github.com"
Selects the first tab whose URL contains "github.com".
```

### st -Firefox -Id 0 Selects the first tab from the Firefox browser.

```powershell
st -Firefox -Id 0
Selects the first tab from the Firefox browser.
```

## Outputs

- `PSObject`

## Related Links

- [Select-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
