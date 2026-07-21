# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames`

## Synopsis

> Pobiera wszystkie nazwy preferencji z magazynu sesji i bazy danych.

## Description

* Pobiera unikalną listę nazw preferencji, łącząc klucze z
  magazynu sesji (zmienne globalne) oraz lokalnego i domyślnego
  magazynu preferencji.
* Uwzględnia parametry zarządzania sesją, aby kontrolować, które źródła
  są przeszukiwane.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Zwraca posortowaną tablicę unikalnych nazw preferencji z magazynu sesji oraz obu magazynów przy użyciu określonej ścieżki bazy danych.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Zwraca tylko nazwy preferencji z magazynu sesji.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Zwraca tylko nazwy preferencji z magazynów bazy danych.

## Parameter Details

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
### `-PreferencesDatabasePath <String>`

> Ścieżka do bazy danych plików preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreferencesDatabasePath.md)
