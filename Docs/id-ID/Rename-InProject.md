# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip`

## Synopsis

> Melakukan penggantian teks di seluruh direktori proyek.

## Description

Secara rekursif mencari melalui file dan direktori dalam proyek untuk melakukan penggantian teks. Menangani baik nama file/direktori maupun konten file. Melewati file biner umum dan folder repositori (.git, .svn) untuk menghindari kerusakan. Menggunakan pengkodean UTF-8 tanpa BOM untuk operasi file. Mendukung mode penggantian case-sensitive dan case-insensitive.

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Direktori, jalur file, atau direktori+mask pencarian |
| `-FindText` | String | ✅ | — | 1 | — | Teks yang akan dicari (kepekaan huruf besar/kecil dikontrol oleh parameter CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Teks yang akan digantikan cocok dengan |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Lakukan penggantian teks tanpa memperhatikan huruf besar/kecil |

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Parameter Details

### `-Source <String>`

> Direktori, jalur file, atau direktori+mask pencarian

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `src`, `s` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FindText <String>`

> Teks yang akan dicari (kepekaan huruf besar/kecil dikontrol oleh parameter CaseInsensitive)

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `find`, `what`, `from` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ReplacementText <String>`

> Teks yang akan digantikan cocok dengan

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `into`, `txt`, `to` |
| **Accept wildcard characters?** | No |

<hr/>
### `-CaseInsensitive`

> Lakukan penggantian teks tanpa memperhatikan huruf besar/kecil

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-OnReboot.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md)
