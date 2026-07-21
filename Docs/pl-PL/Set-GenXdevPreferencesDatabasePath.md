# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ustawia ścieżkę bazy danych dla preferencji używanych w operacjach GenXdev.Data.

## Description

* Konfiguruje globalną ścieżkę bazy danych używaną przez moduł GenXdev.Data do
  różnych operacji przechowywania preferencji i danych.
* Ustawienia są przechowywane w bieżącej sesji (przy użyciu zmiennych globalnych) i
  mogą być wyczyszczone z sesji (przy użyciu -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Ścieżka bazy danych, w której znajdują się pliki danych preferencji |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Po określeniu przechowuje ustawienie tylko w bieżącej sesji (zmienna globalna) bez utrwalania w preferencjach. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Jeśli określono, czyści tylko ustawienie sesji (zmienna globalna) bez wpływania na trwałe preferencje. |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Ustawia ścieżkę bazy danych w bieżącej sesji (zmienna globalna).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Ustawia ścieżkę bazy danych przy użyciu parametru pozycyjnego.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Ustawia ścieżkę tylko dla bieżącej sesji bez utrwalania.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Czyści zmienną globalną ścieżki bazy danych.

## Parameter Details

### `-PreferencesDatabasePath <String>`

> Ścieżka bazy danych, w której znajdują się pliki danych preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
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
### `-SessionOnly`

> Po określeniu przechowuje ustawienie tylko w bieżącej sesji (zmienna globalna) bez utrwalania w preferencjach.

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

> Jeśli określono, czyści tylko ustawienie sesji (zmienna globalna) bez wpływania na trwałe preferencje.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreference.md)
- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md)
