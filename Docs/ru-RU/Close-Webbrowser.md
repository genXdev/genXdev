# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> Закрывает один или несколько экземпляров веб-браузера выборочно.

## Description

Обеспечивает детальный контроль над закрытием экземпляров веб-браузеров. Можно нацелиться на конкретные браузеры (Edge, Chrome, Firefox) или закрыть все браузеры. Поддерживает закрытие как основных окон, так и фоновых процессов.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Завершает работу экземпляров браузера Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Закрывает экземпляры браузера Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Closes default chromium-based browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Закрывает экземпляры браузера Firefox *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Используйте браузер, управляемый Playwright, вместо браузера, установленного в ОС |
| `-Webkit` | SwitchParameter | — | — | Named | — | Открывает браузер WebKit, управляемый Playwright. Подразумевает -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Запустите браузер без видимого окна |
| `-All` | SwitchParameter | — | — | Named | — | Открывается во всех зарегистрированных современных браузерах |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | Закрывает все экземпляры, включая фоновые задачи |

## Examples

### Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses Closes all Chrome and Firefox instances including background processes

```powershell
Close-Webbrowser -Chrome -Firefox -IncludeBackgroundProcesses
Closes all Chrome and Firefox instances including background processes
```

### wbc -a -bg Closes all browser instances including background processes using aliases

```powershell
wbc -a -bg
Closes all browser instances including background processes using aliases
```

## Related Links

- [Close-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
