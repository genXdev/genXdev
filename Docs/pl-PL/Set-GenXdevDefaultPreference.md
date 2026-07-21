# Set-GenXdevDefaultPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `setPreferenceDefault`

## Synopsis

> Ustawia domyślną wartość preferencji w magazynie preferencji GenXdev.

## Description

* Zarządza domyślnymi preferencjami w systemie preferencji GenXdev.
* Obsługuje przechowywanie wartości, usuwanie preferencji, gdy wartości są puste, oraz
  zapewnia synchronizację zmian w całym systemie.
* Obsługuje wartości null poprzez całkowite usunięcie preferencji w takich przypadkach.

## Syntax

```powershell
Set-GenXdevDefaultPreference -Name <String> [[-Value] <String>] [[-PreferencesDatabasePath] <String>] [-ClearSession] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByPropertyName) | 0 | — | Nazwa preferencji do ustawienia w defaults |
| `-Value` | String | — | ✅ (ByPropertyName) | 1 | — | Wartość do przechowania dla preferencji |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Ścieżka do bazy danych plików preferencji |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |

## Examples

### Example 1

```powershell
Set-GenXdevDefaultPreference -Name "Theme" -Value "Dark"
```

Ustawia domyślną preferencję motywu na „Ciemny”.

### Example 2

```powershell
setPreferenceDefault "EmailNotifications" "Disabled"
```

Używa aliasu do wyłączenia powiadomień e-mail w ustawieniach domyślnych.

## Parameter Details

### `-Name <String>`

> Nazwa preferencji do ustawienia w defaults

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Value <String>`

> Wartość do przechowania dla preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `PreferenceValue` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ścieżka do bazy danych plików preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
- [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXdevPreferencesDatabasePath.md)
- [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-GenXdevPreference.md)
- [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreference.md)
- [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-GenXdevPreferencesDatabasePath.md)
