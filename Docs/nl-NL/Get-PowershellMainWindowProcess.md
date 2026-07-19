# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourneert het procesobject voor het venster dat de PowerShell-terminal host.

## Description

* Doorloopt de processtructuur vanaf het huidige PowerShell-proces om het bovenliggende venster te vinden dat verantwoordelijk is voor het hosten van de terminal.
* Als het directe bovenliggende proces geen hoofdvensterhandvat heeft, zoekt het naar vergelijkbare processen die wel hoofdvensters hebben.
* Nuttig voor het identificeren van het werkelijke terminalvensterproces (zoals Windows Terminal, ConHost, enz.) dat de PowerShell-sessie bevat.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Retourneert het proces dat de huidige PowerShell-sessie host en geeft de naam ervan weer.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
