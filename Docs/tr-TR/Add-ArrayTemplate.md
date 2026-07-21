# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Özellik yer tutucularına sahip bir şablon dizesi kullanarak bir nesne koleksiyonunu biçimlendirir ve tek bir biçimlendirilmiş dize üretir.

## Description

Bir nesne koleksiyonu üzerinde yinelenir ve her öğeye {PropertyName} veya {PropertyName:format} yer tutucularıyla bir şablon dizesi uygular. Biçimlendirilmiş sonuçlar yapılandırılabilir bir ayırıcı ile birleştirilir. Esnek çıktı biçimlendirmesi için girinti, sondaki yeni satırlar ve sondaki ayırıcıları destekler.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Biçimlendirilecek nesnelerin koleksiyonu |
| `-Template` | String | ✅ | — | 1 | — | {PropertyName} veya {PropertyName:format} yer tutucuları içeren şablon dizesi |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Biçimlendirilmiş öğeler arasına eklenecek sınırlayıcı dize |
| `-Indentation` | Int32 | — | — | 3 | `0` | Uygulanacak girinti seviyesi sayısı (seviye başına 4 boşluk) |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Son öğenin ardına bir sınırlandırıcı ekler |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Dizinin boş olmadığı durumlarda sonuna bir ayırıcı ekle |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Ad: Alice
Yaş: 30

Ad: Bob
Yaş: 25

Özellik yer tutucuları olan karma tablolar dizisini biçimlendirir.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Girinti ve özel bir ayırıcı ile FormatArray takma adını kullanır.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Biçimlendirilecek nesnelerin koleksiyonu

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> {PropertyName} veya {PropertyName:format} yer tutucuları içeren şablon dizesi

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> Biçimlendirilmiş öğeler arasına eklenecek sınırlayıcı dize

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> Uygulanacak girinti seviyesi sayısı (seviye başına 4 boşluk)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> Son öğenin ardına bir sınırlandırıcı ekler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> Dizinin boş olmadığı durumlarda sonuna bir ayırıcı ekle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-DoubleEmptyLines.md)
