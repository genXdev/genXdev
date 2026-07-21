# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bozulmayı önlemek için atomik olarak dosyaya bayt yazar.

## Description

* Atomik yazma: hedef dosyanın süreç kesintiye uğrarsa asla bozuk bir durumda kalmamasını sağlamak için geçici dosya + yeniden adlandırma stratejisi kullanır.
* Tekrar deneme mantığı: denemeler arasında RetryDelayMs milisaniye gecikme ile yazmayı MaxRetries kez tekrar dener.
* Sıçrama önleme desteği: DebounceMs > 0 olduğunda, aynı dosyaya hızlı ardışık yazmalar birleştirilir — dosyaya DebounceMs ms boyunca dokunulmadığında yalnızca son yük yazılır.
* Dizin oluşturma: ana dizinler yoksa otomatik olarak oluşturur.

## Syntax

```powershell
Write-FileAtomic -FilePath <String> [[-Data] <Byte[]>] [-DebounceMs <Int32>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Yazılacak dosyanın yolu. |
| `-Data` | Byte[] | — | — | 1 | — | Dosyaya yazılacak bayt dizisi. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Atomik yazma işlemi için maksimum yeniden deneme sayısı. Varsayılan değer 4'tür. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Yeniden deneme girişimleri arasındaki milisaniye cinsinden gecikme. Varsayılan değer 200'dür. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0'dan büyükse, bu dosyaya debounce yazar. Varsayılan 0'dır (devre dışı). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Bir bayt dizisini, varsayılan yeniden deneme ayarlarıyla atomik olarak data.bin dosyasına yazar.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

100 kez hızlıca yazar ancak yalnızca son yük (100) 5 saniyelik sessiz dönemin ardından diske kaydedilir.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Özel yeniden deneme ile yazar: Her biri arasında 500ms olacak şekilde en fazla 10 deneme.

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
### `-Data <Byte[]>`

> Dosyaya yazılacak bayt dizisi.

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
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md)
