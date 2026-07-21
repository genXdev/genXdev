# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Memformat kumpulan objek menggunakan string templat dengan placeholder properti, menghasilkan satu string yang diformat.

## Description

Melakukan iterasi pada kumpulan objek dan menerapkan string template dengan penampung {NamaProperti} atau {NamaProperti:format} untuk setiap item. Hasil yang diformat digabungkan dengan pemisah yang dapat dikonfigurasi. Mendukung indentasi, baris baru di akhir, dan pemisah di akhir untuk format keluaran yang fleksibel.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Kumpulan objek yang akan diformat |
| `-Template` | String | ✅ | — | 1 | — | String template dengan tempat penampung {NamaProperti} atau {NamaProperti:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | String pembatas untuk disisipkan di antara item yang diformat |
| `-Indentation` | Int32 | — | — | 3 | `0` | Jumlah level indentasi (4 spasi per level) yang akan diterapkan |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Menambahkan pembatas akhir setelah item terakhir |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Tambahkan pembatas di akhir ketika array tidak kosong |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Nama: Alice
Usia: 30

Nama: Bob
Usia: 25

Memformat array hashtable dengan placeholder properti.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Menggunakan alias FormatArray dengan indentasi dan pembatas kustom.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Kumpulan objek yang akan diformat

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

> String template dengan tempat penampung {NamaProperti} atau {NamaProperti:format}

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

> String pembatas untuk disisipkan di antara item yang diformat

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

> Jumlah level indentasi (4 spasi per level) yang akan diterapkan

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

> Menambahkan pembatas akhir setelah item terakhir

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

> Tambahkan pembatas di akhir ketika array tidak kosong

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-DoubleEmptyLines.md)
