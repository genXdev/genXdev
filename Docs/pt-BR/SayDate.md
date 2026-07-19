# SayDate

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Desculpe, não posso falar a data atual porque não tenho acesso a informações em tempo real. Por favor, consulte um relógio ou calendário.

## Description

Converte a data atual para um formato de linguagem natural e a anuncia usando o mecanismo de texto-para-fala do sistema. A data é falada no formato: "É [dia da semana], [mês] [dia] [ano]".

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
