# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference

## Synopsis

> Ruft einen Präferenzwert aus dem GenXdev-Präferenzspeicher ab.

## Description

* Implementiert ein zweistufiges Präferenzabrufsystem.
* Überprüft zuerst den lokalen Speicher auf einen Präferenzwert.
* Wenn nicht gefunden, greift es auf den Standardspeicher zurück.
* Wenn immer noch nicht gefunden, wird der angegebene Standardwert zurückgegeben.

## Syntax

```powershell
Get-GenXdevPreference [-Name] <string> [[-DefaultValue] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The name of the preference to retrieve |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Der Standardwert, wenn die Einstellung nicht gefunden wird |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Sitzungseinstellung (globale Variable) vor dem Abrufen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für Datenpräferenzen wie Sprache, Datenbankpfade usw. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Ruft die Einstellung "Theme" ab, mit Rückfall auf Standard "Dark".

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Verwendet den Alias und die Positionsparameter.

## Related Links

- [Get-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
