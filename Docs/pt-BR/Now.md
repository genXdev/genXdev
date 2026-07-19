# Now

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Retorna a data e hora atuais do sistema como um objeto DateTime.

## Description

Fornece uma maneira simples de obter a data e hora atuais do sistema sem nenhum parâmetro. Retorna um objeto DateTime padrão do .NET que pode ser usado para cálculos de data/hora, formatação e comparações.

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function start with verbose output
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Now function to retrieve system date and time'
    }


    process {

        # return the current system datetime using .NET DateTime.Now property
        # this provides high-precision timestamp including date and time
        return [DateTime]::Now
    }

    end {
    }
```

## Examples

### Now Returns the current system date and time as a DateTime object

```powershell
Now
Returns the current system date and time as a DateTime object
```

### $timestamp = Now Stores the current date and time in a variable for later use

```powershell
$timestamp = Now
Stores the current date and time in a variable for later use
```

## Outputs

- `DateTime`

## Related Links

- [Now on GitHub](https://github.com/genXdev/genXdev)
