# SayDate

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> The current date is February 25, 2025.

## Description

Convierte la fecha actual a un formato de lenguaje natural y la anuncia usando el motor de texto a voz del sistema. La fecha se dice en el formato: "Hoy es [día de la semana], [mes] [día] [año]"

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
