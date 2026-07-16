# SayDate

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        # format current date into natural speech pattern
        # e.g. "It is Monday, January 1 2024"
        $dateText = 'It is ' + [DateTime]::Now.ToString('dddd, MMMM d yyyy')

        # log the text that will be spoken
        Microsoft.PowerShell.Utility\Write-Verbose "Preparing to speak: $dateText"
    }


    process {

        # use text-to-speech engine to announce the date
        # suppress output by assigning to $null
        $null = GenXdev\Start-TextToSpeech $dateText
    }

    end {
    }
```

## Related Links

- [SayDate on GitHub](https://github.com/genXdev/genXdev)
