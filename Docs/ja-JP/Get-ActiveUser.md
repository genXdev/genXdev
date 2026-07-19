# Get-ActiveUser

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `gusers

## Synopsis

> 現在アクティブなシステムプロセスからユニークなユーザー名のリストを取得します。

## Description

システム上のすべての実行中のプロセスをクエリし、各プロセスに関連付けられたユーザー名を抽出して、アクティブなプロセスを持つユーザーの重複排除リストを返します。これはシステム管理とセキュリティ監視に役立ちます。

## Syntax

```powershell
[CmdletBinding()]
    [Alias('gusers')]
    param()

    begin {

        # store original error preferences for restoration
        $originalEAP = $ErrorActionPreference
        $originalErrorView = $ErrorView

        # set strict error handling
        $ErrorActionPreference = 'Stop'
        $ErrorView = 'DetailedView'

        # inform about the start of process enumeration
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting to enumerate all system processes...'
    }


    process {

        try {

            # get all processes with associated usernames (requires admin privileges)
            $processes = Microsoft.PowerShell.Management\Get-Process * `
                -IncludeUserName `
                -ErrorAction Stop

            # extract and deduplicate usernames from process list
            $users = $processes |
                Microsoft.PowerShell.Core\ForEach-Object UserName |
                Microsoft.PowerShell.Utility\Select-Object -Unique

            # return the filtered list
            $users
        }
        catch [System.UnauthorizedAccessException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Access denied while retrieving processes. Run with elevated privileges.' `
                -Exception $_.Exception `
                -Category PermissionDenied `
                -ErrorId 'ActiveUserAccessDenied'
            throw
        }
        catch [System.ArgumentException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Invalid argument provided when retrieving processes.' `
                -Exception $_.Exception `
                -Category InvalidArgument `
                -ErrorId 'ActiveUserInvalidArgument'
            throw
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message "Unexpected error while retrieving active users: $_" `
                -Exception $_.Exception `
                -Category OperationStopped `
                -ErrorId 'ActiveUserUnexpectedError'
            throw
        }
    }

    end {

        # restore original error handling settings
        $ErrorActionPreference = $originalEAP
        $ErrorView = $originalErrorView

        # output completion status if users were found
        if ($null -ne $users) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Process completed. Found $($users.Count) unique active users."
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Process completed. No active users found or an error occurred.'
        }
    }
```

## Examples

### Get-ActiveUser Returns a list of all unique usernames with active processes.

```powershell
Get-ActiveUser
Returns a list of all unique usernames with active processes.
```

### gusers Uses the alias to get the same results. ##############################################################################

```powershell
gusers
Uses the alias to get the same results.
##############################################################################
```

## Related Links

- [Get-ActiveUser on GitHub](https://github.com/genXdev/genXdev)
