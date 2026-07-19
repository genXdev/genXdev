# SayDate

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Speaks the current date using text-to-speech synthesis.

## Description

現在の日付を自然言語形式に変換し、システムのテキスト読み上げエンジンを使用して発声します。日付は次の形式で発声されます：「今日は[曜日]、[月] [日] [年]です」

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

## Examples

### SayDate Announces today's date using text-to-speech

```powershell
SayDate
Announces today's date using text-to-speech
```

## Related Links

- [SayDate on GitHub](https://github.com/genXdev/genXdev)
