# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Opent een of meer bestanden in Visual Studio Code.

## Description

Deze functie neemt bestandspaden en opent ze in Visual Studio Code. Het breidt paden uit en valideert het bestaan van het bestand voordat het probeert te openen. De functie ondersteunt zowel directe bestandspaden als pipeline invoer, waardoor het ideaal is om snel meerdere bestanden te openen vanuit terminalzoekopdrachten.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | Het pad naar het bestand om te openen in VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Bronbestand toevoegen aan Copilot-bewerkingssessie |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
