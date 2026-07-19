# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft den Pfad zur ausführbaren Datei MpCmdRun.exe von Windows Defender ab.

## Description

* Sucht den vollständigen Pfad zum Befehlszeilentool von Windows Defender (MpCmdRun.exe) und gibt ihn zurück.
* Das Cmdlet überprüft den standardmäßigen Installationsort in Program Files und bietet eine entsprechende Fehlerbehandlung, falls die Datei nicht gefunden wird.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Ruft den vollständigen Pfad zum Befehlszeilentool von Windows Defender ab.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
