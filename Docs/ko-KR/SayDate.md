# SayDate

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Speaks the current date using text-to-speech synthesis.

## Description

현재 날짜를 자연어 형식으로 변환하여 시스템의 텍스트 음성 변환 엔진을 사용해 발표합니다. 날짜는 다음 형식으로 발표됩니다: "오늘은 [요일], [월] [일] [년]"

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
