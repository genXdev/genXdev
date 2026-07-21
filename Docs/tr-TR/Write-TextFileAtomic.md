# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bozulmayı önlemek için metni atomik olarak bir dosyaya yazar.

## Description

* Atomik yazma: işlem kesintiye uğrarsa hedef dosyanın asla bozuk durumda kalmaması için geçici dosya + yeniden adlandırma stratejisi kullanır.
* Yeniden deneme mantığı: yazmayı MaxRetries kez denemeler arasında RetryDelayMs milisaniye gecikme ile yeniden dener.
* Kodlama desteği: çıktı kodlamasını kontrol etmek için bir System.Text.Encoding parametresi kabul eder. Varsayılan UTF-8'dir.
* Debounce desteği: DebounceMs > 0 olduğunda, aynı dosyaya hızlı ardışık yazmalar birleştirilir — yalnızca dosyaya DebounceMs ms süresince dokunulmadığında son yük yazılır.
* Dizin oluşturma: üst dizinler yoksa otomatik olarak oluşturur.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Yazılacak dosyanın yolu. |
| `-Data` | String | — | — | 1 | — | Dosyaya yazılacak metin içeriği. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Atomik yazma işlemi için maksimum yeniden deneme sayısı. Varsayılan değer 4'tür. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Yeniden deneme girişimleri arasındaki milisaniye cinsinden gecikme. Varsayılan değer 200'dür. |
| `-Encoding` | Text.Encoding | — | — | Named | — | Dosyayı yazarken kullanılacak metin kodlaması. Varsayılan UTF-8'dir. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0'dan büyükse, bu dosyaya debounce yazar. Varsayılan 0'dır (devre dışı). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

UTF-8 kodlaması kullanarak config.txt dosyasına atomik olarak bir dize yazar.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

50 satırı hızlıca aktarır; yalnızca son satır 2 saniyelik sessizlik süresinden sonra kalıcı olur.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

ASCII kodlaması kullanarak data.csv dosyasına atomik olarak bir dize yazar.

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

Bir arka plan işi her 100 ms'de zaman damgası yazar ancak debounce bunları birleştirir — saniyede yalnızca bir yazma işlemi diske ulaşır.

## Parameter Details

### `-FilePath <String>`

> Yazılacak dosyanın yolu.

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

> Dosyaya yazılacak metin içeriği.

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

> Atomik yazma işlemi için maksimum yeniden deneme sayısı. Varsayılan değer 4'tür.

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

> Yeniden deneme girişimleri arasındaki milisaniye cinsinden gecikme. Varsayılan değer 200'dür.

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

> Dosyayı yazarken kullanılacak metin kodlaması. Varsayılan UTF-8'dir.

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

> 0'dan büyükse, bu dosyaya debounce yazar. Varsayılan 0'dır (devre dışı).

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

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md)
