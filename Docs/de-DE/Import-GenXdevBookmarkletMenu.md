# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importiert GenXdev JavaScript-Bookmarklets in Browser-Lesezeichensammlungen.

## Description

Diese Funktion durchsucht ein Verzeichnis nach GenXdev-Lesezeichen-Dateien mit der

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Pfad zum Verzeichnis mit Lesezeichen-Snippet-Dateien |
| `-TargetFolder` | String | — | — | 1 | `""` | Ziel-Lesezeichenordner in der Browser-Lesezeichenstruktur |
| `-Edge` | SwitchParameter | — | — | Named | — | Import bookmarklets into Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Import bookmarklets into Google Chrome browser |
| `-Firefox` | SwitchParameter | — | — | Named | — | Import bookmarklets into Mozilla Firefox browser |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Importiert alle Bookmarklet-Dateien aus dem Standardverzeichnis für Snippets in den Favoritenordner von Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Zeigt an, welche Lesezeichen von dem angegebenen Pfad in Google Chrome importiert würden, ohne den Import tatsächlich durchzuführen.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
