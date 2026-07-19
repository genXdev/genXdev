# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gibt das Prozessobjekt für das Fenster zurück, das das PowerShell-Terminal hostet.

## Description

* Durchläuft die Prozesshierarchie ausgehend vom aktuellen PowerShell-Prozess nach oben, um das übergeordnete Fenster zu finden, das für das Hosting des Terminals verantwortlich ist.
* Wenn der unmittelbare übergeordnete Prozess keinen Hauptfenster-Handle besitzt, sucht es nach ähnlichen Prozessen, die Hauptfenster besitzen.
* Nützlich zur Identifizierung des eigentlichen Terminal-Fensterprozesses (wie Windows Terminal, ConHost usw.), der die PowerShell-Sitzung enthält.

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

Gibt den Prozess zurück, der die aktuelle PowerShell-Sitzung hostet, und zeigt dessen Namen an.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
