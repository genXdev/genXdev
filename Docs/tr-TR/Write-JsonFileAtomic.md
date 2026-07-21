# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Bir nesneyi, bozulmayı önlemek için atomik olarak JSON dosyasına yazar.

## Description

* Atomik yazma: hedef dosyanın işlem kesintiye uğrarsa asla bozuk durumda kalmamasını sağlamak için geçici dosya + yeniden adlandırma stratejisi kullanır.
* Tekrar deneme mantığı: yazma işlemini MaxRetries kez, denemeler arasında RetryDelayMs milisaniye gecikme ile tekrar dener.
* Nesne desteği: yalnızca Hashtable değil, herhangi bir nesneyi kabul eder. System.Text.Json ile serileştirir, yerel olarak serileştirilemeyen karmaşık .NET türleri için ConvertTo-Json'a geri döner.
* Debounce desteği: DebounceMs > 0 olduğunda, aynı dosyaya yapılan hızlı ardışık yazmalar birleştirilir — yalnızca son yük, dosyaya DebounceMs ms boyunca dokunulmadığında yazılır.
* Dizin oluşturma: üst dizinler yoksa otomatik olarak oluşturur.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Yazılacak dosyanın yolu. |
| `-Data` | Object | — | — | 1 | — | Serileştirilecek ve dosyaya yazılacak JSON nesnesi. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Atomik yazma işlemi için maksimum yeniden deneme sayısı. Varsayılan değer 4'tür. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Yeniden deneme girişimleri arasındaki milisaniye cinsinden gecikme. Varsayılan değer 200'dür. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 0'dan büyükse, bu dosyaya debounce yazar. Varsayılan 0'dır (devre dışı). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON serileştirme için maksimum derinlik. Varsayılan değer 30'dur. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın! Görüntü veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan Türkiye Türkçesine çevirin. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın! Görüntü veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan Türkiye Türkçesine çevirin. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Tüm numaralandırmaları dize gösterimlerine dönüştüren alternatif bir serileştirme seçeneği sağlar. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Bir Hashtable'ı girintili JSON olarak atomik şekilde config.json dosyasına yazar.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Nesne işlemlerini atomik olarak Sıkıştırılmış JSON biçiminde yazar.

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
### `-Data <Object>`

> Serileştirilecek ve dosyaya yazılacak JSON nesnesi.

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
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> JSON serileştirme için maksimum derinlik. Varsayılan değer 30'dur.

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

> PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın! Görüntü veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan Türkiye Türkçesine çevirin.

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

> PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın! Görüntü veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan Türkiye Türkçesine çevirin.

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

> Tüm numaralandırmaları dize gösterimlerine dönüştüren alternatif bir serileştirme seçeneği sağlar.

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
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Write-TextFileAtomic.md)
