# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Scannt Dateien oder Verzeichnisse mit Windows Defender auf Malware.

## Description

* Führt einen gezielten Scan von angegebenen Dateien oder Verzeichnissen mit der Befehlszeilenschnittstelle von Windows Defender (MpCmdRun.exe) durch.
* Kann im Nur-Erkennungs-Modus oder mit aktivierter automatischer Bedrohungsbehebung scannen.
* Gibt „true“ zurück, wenn keine Bedrohungen erkannt werden, „false“, wenn Bedrohungen gefunden werden oder der Scan fehlschlägt.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Pfad zur Datei oder zum Verzeichnis, das überprüft werden soll |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Weist Windows Defender an, Maßnahmen gegen Bedrohungen zu ergreifen |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Scannt die angegebene Datei und zeigt ausführliche Ausgabe an.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Scannt die Datei mit dem Alias und aktiviert die Bereinigung.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Leitet den Dateipfad mit einem Alias an das Cmdlet weiter.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
