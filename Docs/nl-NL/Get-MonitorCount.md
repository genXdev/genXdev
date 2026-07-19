# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt het totale aantal weergavemonitoren op dat op het systeem is aangesloten.

## Description

* Gebruikt de WPF Screen helperklasse om nauwkeurig het aantal fysieke beeldschermen te bepalen dat momenteel op het systeem is aangesloten.
* Dit omvat zowel actieve als gedetecteerde maar uitgeschakelde monitoren.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Retourneert het totale aantal aangesloten monitors (bijv. 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Retourneert het aantal monitoren met uitgebreide uitvoer die het detectieproces laat zien.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
