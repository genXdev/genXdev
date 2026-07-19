# CurrentUserHasElevatedRights

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 現在のユーザーが昇格された権限を持っているかどうかを確認します。

## Description

現在のWindowsユーザーが管理者またはバックアップオペレーターの権限を持っているかどうかを、セキュリティプリンシパルロールを確認することで判断します。ユーザーが昇格された権限を持っている場合はtrueを、そうでない場合はfalseを返します。セキュリティおよびアクセス関連の問題に対して、堅牢なエラーハンドリングを実装しています。

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.Boolean])]
    param()

    begin {

        # store original error preferences for restoration
        $originalEAP = $ErrorActionPreference
        $originalErrorView = $ErrorView

        # set strict error handling
        $ErrorActionPreference = 'Stop'
        $ErrorView = 'DetailedView'

        Microsoft.PowerShell.Utility\Write-Verbose "Checking current user's security privileges..."
    }


    process {

        try {

            # get the current windows identity with error handling
            $identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()

            # create a new principal object from the identity
            $principal = Microsoft.PowerShell.Utility\New-Object `
                -TypeName System.Security.Principal.WindowsPrincipal `
                -ArgumentList $identity

            # check for administrative or backup operator privileges
            if ($principal.IsInRole(
                    [System.Security.Principal.WindowsBuiltInRole]::Administrator) -or
                $principal.IsInRole(
                    [System.Security.Principal.WindowsBuiltInRole]::BackupOperator)) {

                Microsoft.PowerShell.Utility\Write-Verbose 'User has elevated rights'
                return $true
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'User does not have elevated rights'
            return $false
        }
        catch [System.Security.SecurityException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Security violation checking user rights' `
                -Exception $_.Exception `
                -Category SecurityError `
                -ErrorId 'SecurityViolation'
            throw
        }
        catch [System.UnauthorizedAccessException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Access denied while verifying user privileges' `
                -Exception $_.Exception `
                -Category PermissionDenied `
                -ErrorId 'AccessDenied'
            throw
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Unexpected error during rights verification' `
                -Exception $_.Exception `
                -Category OperationStopped `
                -ErrorId 'UnexpectedError'
            throw
        }
    }

    end {

        # restore original error handling settings
        $ErrorActionPreference = $originalEAP
        $ErrorView = $originalErrorView
    }
```

## Examples

### $hasRights = CurrentUserHasElevatedRights ##############################################################################

```powershell
$hasRights = CurrentUserHasElevatedRights
##############################################################################
```

## Outputs

- `Boolean
Returns true if user has admin or backup operator rights, false otherwise.`
- `Boolean`

## Related Links

- [CurrentUserHasElevatedRights on GitHub](https://github.com/genXdev/genXdev)
