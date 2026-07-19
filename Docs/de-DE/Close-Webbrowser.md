# Close-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** `wbc

## Synopsis

> Schließt selektiv eine oder mehrere Webbrowser-Instanzen.

## Description

Ermöglicht eine granulare Kontrolle über das Schließen von Webbrowser-Instanzen. Kann gezielt bestimmte Browser (Edge, Chrome, Firefox) ansprechen oder alle Browser schließen. Unterstützt das Schließen sowohl von Hauptfenstern als auch von Hintergrundprozessen.

## Syntax

```powershell
Close-Webbrowser [-Chrome] [-Chromium] [-Edge] [-Firefox] [<CommonParameters>]

Close-Webbrowser [-All] [-Headless] [-IncludeBackgroundProcesses] [-PlayWright] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | — | Schließt Microsoft Edge Browserinstanzen *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | — | Schließt Instanzen des Google Chrome Browsers *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | — | Schließt den standardmäßigen Chromium-basierten Browser *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | — | Schließt Firefox-Browserinstanzen *(Parameter set: )* |
| `-PlayWright` | SwitchParameter | — | — | Named | — | Verwenden Sie den von Playwright verwalteten Browser anstelle des im Betriebssystem installierten Browsers. |
| `-Webkit` | SwitchParameter | — | — | Named | — | Öffnet den von Playwright verwalteten WebKit-Browser. Impliziert -PlayWright |
| `-Headless` | SwitchParameter | — | — | Named | — | Führen Sie den Browser ohne sichtbares Fenster aus |
| `-All` | SwitchParameter | — | — | Named | — | Öffnet in allen registrierten modernen Browsern |
| `-IncludeBackgroundProcesses` | SwitchParameter | — | — | Named | — | Schließt alle Instanzen einschließlich Hintergrundaufgaben |

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
