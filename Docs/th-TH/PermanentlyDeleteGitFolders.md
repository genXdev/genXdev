# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> ลบโฟลเดอร์ที่ระบุอย่างถาวรออกจากทุกสาขาในพื้นที่เก็บ Git

## Description

ล้างที่เก็บ Git โดยการลบโฟลเดอร์ที่ระบุออกจากประวัติคอมมิตทั้งหมดในทุกสาขา โดยการโคลนที่เก็บ ใช้ git filter-branch เพื่อลบโฟลเดอร์ และพุชการเปลี่ยนแปลงกลับไป การดำเนินการนี้เป็นการทำลายล้างและเขียนประวัติ Git ใหม่ถาวร

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | URI ของที่เก็บ Git ที่จะทำความสะอาด |
| `-Folders` | String[] | ✅ | — | 1 | — | อาร์เรย์ของเส้นทางโฟลเดอร์ที่จะลบอย่างถาวร |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Parameter Details

### `-RepoUri <String>`

> URI ของที่เก็บ Git ที่จะทำความสะอาด

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Folders <String[]>`

> อาร์เรย์ของเส้นทางโฟลเดอร์ที่จะลบอย่างถาวร

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-tempPath <String>`

> The `-tempPath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"~\convert.tmp\"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/Get-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/New-GitCommit.md)
