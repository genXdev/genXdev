# Get-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreference`

## Synopsis

> Pobiera wartość preferencji z magazynu preferencji GenXdev.

## Description

* Implementuje dwupoziomowy system pobierania preferencji.
* Najpierw sprawdza lokalny magazyn dla wartości preferencji.
* Jeśli nie znaleziono, przechodzi do domyślnego magazynu.
* Jeśli nadal nie znaleziono, zwraca podaną wartość domyślną.

## Syntax

```powershell
Get-GenXdevPreference -Name <String> [[-DefaultValue] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Nazwa preferencji do pobrania |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | 1 | — | Wartość domyślna, jeśli preferencja nie zostanie znaleziona |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |

## Examples

### Example 1

```powershell
Get-GenXdevPreference -Name "Theme" -DefaultValue "Dark"
```

Pobiera preferencję „Motywy” z domyślnym powrotem do trybu „Ciemny”.

### Example 2

```powershell
getPreference "Theme" "Dark"
```

Używa aliasu i parametrów pozycyjnych.

## Parameter Details

### `-Name <String>`

> Nazwa preferencji do pobrania

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Wartość domyślna, jeśli preferencja nie zostanie znaleziona

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
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

- [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferenceNames.md)
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md)
- [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevDefaultPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreferencesDatabasePath.md)
