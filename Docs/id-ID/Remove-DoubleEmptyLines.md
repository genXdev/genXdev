# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Menghapus baris kosong ganda (berurutan) dari string kode, secara opsional memformat ulang output.

## Description

Membersihkan kode sumber atau teks dengan menggabungkan baris kosong berurutan menjadi satu baris kosong. Ini meningkatkan keterbacaan dan mengikuti konvensi pemformatan kode umum. Saat sakelar -Reformat ditentukan, aturan pemformatan tambahan diterapkan untuk menormalkan struktur kode.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Sumber kode atau teks yang akan diproses untuk menghilangkan baris kosong ganda |
| `-Reformat` | SwitchParameter | — | — | Named | — | Terapkan aturan pemformatan tambahan selain penghapusan baris kosong ganda |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Menyalurkan kode sumber melalui fungsi untuk menghapus baris kosong berurutan.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Menghapus baris kosong ganda dan menerapkan pemformatan tambahan.

## Parameter Details

### `-code <String>`

> Sumber kode atau teks yang akan diproses untuk menghilangkan baris kosong ganda

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> Terapkan aturan pemformatan tambahan selain penghapusan baris kosong ganda

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-ArrayTemplate.md)
