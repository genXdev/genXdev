# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Gibt den Pfad zur zu formatierenden Skriptdatei an. |
| `-Settings` | Object | — | — | Named | — | Eine Einstellungshashtabelle oder ein Pfad zu einer PowerShell-Datendatei (.psd1), die die Formatierungseinstellungen enthält. |
| `-Range` | Int32[] | — | — | Named | — | Der Bereich, in dem die Formatierung erfolgen soll, als Array von vier Ganzzahlen: Startzeilennummer, Startspaltennummer, Endzeilennummer, Endspaltennummer. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Dateien in Unterverzeichnissen rekursiv verarbeiten. |

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
