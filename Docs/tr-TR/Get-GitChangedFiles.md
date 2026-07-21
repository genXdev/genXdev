# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Bir Git deposunda değiştirilen dosyaların listesini alın.

## Description

Bu işlev, mevcut Git deposunda değiştirilmiş dosyaların listesini alır. Hangi dosyaların değiştirildiğini, eklendiğini veya silindiğini belirlemek için kullanılabilir. Varsayılan olarak, .\ öneki ile göreli yollar döndürür. FileInfo nesneleri almak için -PassThru kullanın.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Yol dizeleri yerine FileInfo nesneleri döndürür (Get-ChildItem gibi). |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

"\"Göreceli yolları döndürür, örneğin: .\Modüller\GenXdev.AI\3.26.2026\README.md\""

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Değiştirilen her dosya için FileInfo nesneleri döndürür.

## Parameter Details

### `-PassThru`

> Yol dizeleri yerine FileInfo nesneleri döndürür (Get-ChildItem gibi).

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/PermanentlyDeleteGitFolders.md)
