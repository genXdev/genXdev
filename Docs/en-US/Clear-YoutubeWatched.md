# Clear-YoutubeWatched

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {
        # inform user that we're looking for a youtube tab
        Microsoft.PowerShell.Utility\Write-Verbose 'Searching for an open YouTube browser tab...'
    }


    process {

        try {
            # attempt to select any open youtube tab
            $null = GenXdev\Select-WebbrowserTab -Name '*youtube*'

            # verify chrome session exists and is valid
            if ($null -eq $chromeSession -or $chromeSession -isnot [PSCustomObject]) {
                throw 'No active YouTube tab found in browser'
            }

            # inform user we're clearing the watch history
            Microsoft.PowerShell.Utility\Write-Verbose 'Clearing YouTube watch history from local storage...'

            # reset the watch history in local storage
            $null = GenXdev\Invoke-WebbrowserEvaluation `
                -Script "localStorage['oaytvDone'] = '[]'"

            Microsoft.PowerShell.Utility\Write-Verbose 'YouTube watch history cleared successfully'
        }
        catch {
            throw "Failed to clear YouTube watch history: $_"
        }
    }

    end {
    }
```

## Related Links

- [Clear-YoutubeWatched on GitHub](https://github.com/genXdev/genXdev)
