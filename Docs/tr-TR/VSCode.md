# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Visual Studio Code'da bir veya daha fazla dosyayı açar.

## Description

Bu işlev dosya yollarını alır ve bunları Visual Studio Code'da açar. Yolları genişletir ve dosya varlığını doğrular, ardından açmaya çalışır. İşlev, doğrudan dosya yollarını ve ardışık düzen girişini destekler; bu da terminal aramalarından birden çok dosyayı hızlıca açmak için idealdir.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | VSCode'da açılacak dosyanın yolu |
| `-Copilot` | SwitchParameter | — | — | Named | — | Kaynak dosyayı Copilot düzenleme oturumuna ekle |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Parameter Details

### `-FilePath <String[]>`

> VSCode'da açılacak dosyanın yolu

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Copilot`

> Kaynak dosyayı Copilot düzenleme oturumuna ekle

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-Refactor.md)
