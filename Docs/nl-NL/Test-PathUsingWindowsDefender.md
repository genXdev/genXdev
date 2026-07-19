# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Scant bestanden of mappen op malware met Windows Defender.

## Description

* Voert een gerichte scan uit van opgegeven bestanden of mappen met behulp van de opdrachtregelinterface van Windows Defender (MpCmdRun.exe).
* Kan scannen in detectie-only-modus of met automatische herstel van bedreigingen ingeschakeld.
* Retourneert true als er geen bedreigingen worden gedetecteerd, false als er bedreigingen worden gevonden of de scan mislukt.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het pad naar het bestand of de map dat moet worden gescand |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instructs Windows Defender to take action on threats |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Scant het opgegeven bestand en toont uitgebreide uitvoer.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Scant het bestand met behulp van de alias en schakelt herstel in.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Pijpt het bestandspad naar de cmdlet met behulp van een alias.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
