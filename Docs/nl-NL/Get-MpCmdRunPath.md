# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het pad naar het uitvoerbare bestand MpCmdRun.exe van Windows Defender op.

## Description

* Vindt en retourneert het volledige pad naar het opdrachtregelprogramma van Windows Defender (MpCmdRun.exe).
* De cmdlet controleert de standaardinstallatielocatie in Program Files en voorziet in geschikte foutafhandeling als het bestand niet wordt gevonden.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Haalt het volledige pad op naar de opdrachtregeltool van Windows Defender.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
