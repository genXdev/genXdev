# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Zapisuje tekst do pliku w sposób atomistyczny, aby zapobiec uszkodzeniu.

## Description

* Zapis atomowy: używa strategii pliku tymczasowego i zmiany nazwy, aby zapewnić, że plik docelowy nigdy nie pozostanie w uszkodzonym stanie, jeśli proces zostanie przerwany.
* Logika ponawiania: ponawia zapis do MaxRetries razy z opóźnieniem RetryDelayMs milisekund między próbami.
* Obsługa kodowania: akceptuje parametr System.Text.Encoding do kontroli kodowania wyjściowego. Domyślnie UTF-8.
* Obsługa debouncingu: gdy DebounceMs > 0, szybkie kolejne zapisy do tego samego pliku są łączone – tylko ostatnia treść jest zapisywana, gdy plik nie był modyfikowany przez DebounceMs ms.
* Tworzenie katalogów: automatycznie tworzy katalogi nadrzędne, jeśli nie istnieją.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Ścieżka do pliku do zapisu. |
| `-Data` | String | — | — | 1 | — | Tekst do zapisania w pliku. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Maksymalna liczba prób ponowienia operacji zapisu atomowego. Domyślnie 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Opóźnienie w milisekundach między próbami ponowienia. Domyślnie 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | Kodowanie tekstu używane podczas zapisywania pliku. Domyślnie jest to UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Jeśli większy niż 0, to powoduje opóźnienie zapisu do tego pliku. Wartość domyślna to 0 (wyłączone). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Zapisuje ciąg znaków do pliku config.txt przy użyciu kodowania UTF-8 w sposób atomowy.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Szybko przesyła 50 linii; tylko ostatnia linia jest zachowana po 2-sekundowym okresie ciszy.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Zapisuje ciąg znaków do pliku data.csv przy użyciu kodowania ASCII w sposób atomowy.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Zadanie w tle zapisuje znaczniki czasu co 100 ms, ale debounce je łączy — tylko jeden zapis na sekundę faktycznie trafia na dysk.

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
### `-Data <String>`

> Tekst do zapisania w pliku.

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
### `-Encoding <Text.Encoding>`

> Kodowanie tekstu używane podczas zapisywania pliku. Domyślnie jest to UTF-8.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
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
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Write-JsonFileAtomic.md)
