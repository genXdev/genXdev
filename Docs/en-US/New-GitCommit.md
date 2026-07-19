# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit

## Synopsis

> Creates and pushes a new git commit with all changes.

## Description

Stages all changes in the current git repository, creates a commit with the specified title, and pushes the changes to the remote origin. Automatically sets up upstream tracking if needed.

## Syntax

```powershell
New-GitCommit [[-Title] <string>] [<CommonParameters>]
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

## Related Links

- [New-GitCommit on GitHub](https://github.com/genXdev/genXdev)
