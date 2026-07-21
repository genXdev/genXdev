# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Zapisuje obiekt jako atomowo plik JSON, aby zapobiec uszkodzeniom.

## Description

* Zapis atomowy: używa strategii pliku tymczasowego + zmiany nazwy, aby zapewnić, że plik docelowy nigdy nie pozostanie w uszkodzonym stanie, jeśli proces zostanie przerwany.
* Logika ponawiania: ponawia zapis do MaxRetries razy z opóźnieniem RetryDelayMs milisekund między próbami.
* Obsługa obiektów: akceptuje dowolny obiekt, nie tylko Hashtable. Serializuje za pomocą System.Text.Json z rezerwowym ConvertTo-Json dla złożonych typów .NET, które nie mogą być serializowane natywnie.
* Obsługa odbicia (debouncing): gdy DebounceMs > 0, szybkie kolejne zapisy do tego samego pliku są łączone — tylko ostatnia treść jest zapisywana, gdy plik nie był modyfikowany przez DebounceMs ms.
* Tworzenie katalogów: automatycznie tworzy katalogi nadrzędne, jeśli nie istnieją.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Ścieżka do pliku do zapisu. |
| `-Data` | Object | — | — | 1 | — | Obiekt do serializacji jako JSON i zapisu do pliku. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Maksymalna liczba prób ponowienia operacji zapisu atomowego. Domyślnie 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Opóźnienie w milisekundach między próbami ponowienia. Domyślnie 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Jeśli większy niż 0, to powoduje opóźnienie zapisu do tego pliku. Wartość domyślna to 0 (wyłączone). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maksymalna głębokość dla serializacji JSON. Domyślnie 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | ---
.externalhelp c:\cybersecurity\Marte\Marte.dll-help.xml
.LINK
Online version: https://go.microsoft.com/fwlink/?linkid=2264433
--- |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | ---
.externalhelp c:\cybersecurity\Marte\Marte.dll-help.xml
.LINK
Online version: https://go.microsoft.com/fwlink/?linkid=2264433
--- |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Zapewnia alternatywną opcję serializacji, która konwertuje wszystkie wyliczenia na ich reprezentację tekstową. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Zapisuje tablicę skrótów jako wcięty JSON do pliku config.json w sposób atomowy.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Zapisuje obiekty procesu jako atomowy skompresowany JSON.

## Parameter Details

### `-FilePath <String>`

> Ścieżka do pliku do zapisu.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> Obiekt do serializacji jako JSON i zapisu do pliku.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Maksymalna liczba prób ponowienia operacji zapisu atomowego. Domyślnie 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> Opóźnienie w milisekundach między próbami ponowienia. Domyślnie 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Jeśli większy niż 0, to powoduje opóźnienie zapisu do tego pliku. Wartość domyślna to 0 (wyłączone).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Maksymalna głębokość dla serializacji JSON. Domyślnie 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> ---
.externalhelp c:\cybersecurity\Marte\Marte.dll-help.xml
.LINK
Online version: https://go.microsoft.com/fwlink/?linkid=2264433
---

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> ---
.externalhelp c:\cybersecurity\Marte\Marte.dll-help.xml
.LINK
Online version: https://go.microsoft.com/fwlink/?linkid=2264433
---

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> Zapewnia alternatywną opcję serializacji, która konwertuje wszystkie wyliczenia na ich reprezentację tekstową.

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-TextFileAtomic.md)
