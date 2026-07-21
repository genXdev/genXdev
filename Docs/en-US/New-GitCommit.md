# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Creates and pushes a new git commit with all changes.

## Description

Stages all changes in the current git repository, creates a commit with the specified title, and pushes the changes to the remote origin. Automatically sets up upstream tracking if needed.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | The commit message title to use |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Create a commit with a custom message "Added new authentication feature".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Create a commit using the 'commit' alias with default message.

## Parameter Details

### `-Title <String>`

> The commit message title to use

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/PermanentlyDeleteGitFolders.md)
