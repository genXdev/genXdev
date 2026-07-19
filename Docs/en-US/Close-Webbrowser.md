# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> Closes one or more webbrowser instances selectively.

## Description

Provides granular control over closing web browser instances. Can target specific
browsers (Edge, Chrome, Firefox) or close all browsers. Supports closing both main
windows and background processes.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Closes Microsoft Edge browser instances *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Closes Google Chrome browser instances *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Closes default chromium-based browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Closes Firefox browser instances *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Use Playwright-managed browser instead of the OS-installed browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Opens the Playwright-managed WebKit browser. Implies -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Run the browser without a visible window |
| `-All` | SwitchParameter | — | — | Named | — | Opens in all registered modern browsers |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | Closes all instances including background tasks |

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
