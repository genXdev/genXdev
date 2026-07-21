# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Tüm değişikliklerle yeni bir git commit'i oluşturur ve gönderir.

## Description

Geçerli git deposundaki tüm değişiklikleri aşamalandırır, belirtilen başlıkla bir commit oluşturur ve değişiklikleri uzak origin'e gönderir. Gerekirse yukarı akış takibini otomatik olarak ayarlar.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Kullanılacak commit mesajı başlığı |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

"Yeni kimlik doğrulama özelliği eklendi" özel mesajıyla bir commit oluşturun.

### Example 2

```powershell
commit "Hotfix for login issue"
```

'commit' takma adını varsayılan mesajla kullanarak bir işleme (commit) oluşturun.

## Parameter Details

### `-Title <String>`

> Kullanılacak commit mesajı başlığı

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/PermanentlyDeleteGitFolders.md)
