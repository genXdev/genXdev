# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Pobiera skonfigurowaną ścieżkę bazy danych dla plików danych preferencji używanych w operacjach GenXdev.Data.

## Description

* Pobiera globalną ścieżkę bazy danych używaną przez moduł GenXdev.Data do
  różnych operacji przechowywania preferencji i danych.
* Sprawdza najpierw zmienne globalne (chyba że określono SkipSession), następnie
  korzysta z trwałych preferencji, a ostatecznie używa ustawień domyślnych systemu.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Opcjonalne nadpisanie ścieżki bazy danych |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Pobiera ścieżkę bazy danych ze zmiennych globalnych lub preferencji.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Pomija zmienną sesji i używa preferencji trwałych.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Czyści ustawienie sesji przed pobraniem ścieżki.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Opcjonalne nadpisanie ścieżki bazy danych

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferenceNames.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreferencesDatabasePath.md)
