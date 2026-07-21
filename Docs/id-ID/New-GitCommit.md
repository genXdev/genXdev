# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Membuat dan mendorong commit git baru dengan semua perubahan.

## Description

Menstadikan semua perubahan di repositori git saat ini, membuat commit dengan judul yang ditentukan, dan mendorong perubahan ke origin jarak jauh. Secara otomatis mengatur pelacakan upstream jika diperlukan.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Judul pesan commit yang akan digunakan |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Buat commit dengan pesan kustom "Menambahkan fitur autentikasi baru".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Lakukan commit menggunakan alias 'commit' dengan pesan default.

## Parameter Details

### `-Title <String>`

> Judul pesan commit yang akan digunakan

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/PermanentlyDeleteGitFolders.md)
