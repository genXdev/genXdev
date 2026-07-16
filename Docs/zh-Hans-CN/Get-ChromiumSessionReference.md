# Get-ChromiumSessionReference

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [OutputType([hashtable])]
    param()

    begin {
        # verify if a browser session exists in global scope
        Microsoft.PowerShell.Utility\Write-Verbose 'Checking for active browser session'

        # create global data storage if it doesn't exist
        if ($Global:Data -isnot [Hashtable]) {
            $globalData = @{}
            $null = Microsoft.PowerShell.Utility\Set-Variable -Name 'Data' -Value $globalData `
                -Scope Global -Force
        }
        else {
            $globalData = $Global:Data
        }
    }


    process {

        # ensure chrome session exists and is of correct type
        if (($null -eq $Global:chromeSession) -or
            ($Global:chromeSession -isnot [PSCustomObject])) {

            throw 'No browser available with open debugging port, use -Force to restart'
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'Found active session'

        # verify chrome controller is still active
        if (($null -eq $Global:chromeController) -or
            ($Global:chromeController.IsClosed)) {

            throw 'Browser session expired. Use Select-WebbrowserTab to select' +
            ' a new session.'
        }

        Microsoft.PowerShell.Utility\Write-Verbose 'Session is still active'

        # ensure session has data property and return reference
        if (-not ($Global:chromeSession.data -is [hashtable])) {

            Microsoft.PowerShell.Utility\Add-Member -InputObject $Global:chromeSession `
                -MemberType NoteProperty -Name 'data' -Value $globalData -Force
        }

        return ($Global:chromeSession);
    }

    end {
    }
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-ChromiumSessionReference on GitHub](https://github.com/genXdev/genXdev)
