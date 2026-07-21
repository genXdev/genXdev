# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Mendapatkan daftar file yang berubah di repositori Git.

## Description

Fungsi ini mengambil daftar file yang telah diubah di repositori Git saat ini. Dapat digunakan untuk mengidentifikasi file mana yang telah dimodifikasi, ditambahkan, atau dihapus. Secara default, mengembalikan path relatif dengan awalan .\. Gunakan -PassThru untuk mendapatkan objek FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Mengembalikan objek FileInfo (seperti Get-ChildItem) alih-alih string path. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Mengembalikan jalur relatif seperti ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Mengembalikan objek FileInfo untuk setiap file yang diubah.

## Parameter Details

### `-PassThru`

> Mengembalikan objek FileInfo (seperti Get-ChildItem) alih-alih string path.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/PermanentlyDeleteGitFolders.md)
