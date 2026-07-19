# Invoke-ImageObjectsUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imageobjectdetection

## Synopsis

> Aktualisiert die Metadaten zur Objekterkennung für Bilddateien in einem bestimmten Verzeichnis.

## Description

Diese Funktion verarbeitet Bilder in einem angegebenen Verzeichnis, um Objekte mit Hilfe von künstlicher Intelligenz zu erkennen. Sie erstellt JSON-Metadatendateien, die erkannte Objekte, deren Positionen, Konfidenzwerte und Labels enthalten. Die Funktion unterstützt die Stapelverarbeitung mit konfigurierbaren Konfidenzschwellen und kann optional vorhandene Metadatendateien überspringen oder zuvor fehlgeschlagene Erkennungen erneut versuchen.

## Syntax

```powershell
Invoke-ImageObjectsUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Language <String>] [-LLMQueryType <String>] [-Model <String>] [-OnlyNew] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Die Verzeichnispfade, die Bilder zur Verarbeitung enthalten |
| `-Recurse` | SwitchParameter | — | — | Named | — | Verarbeite Bilder im angegebenen Verzeichnis und allen Unterverzeichnissen |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Werde zuvor fehlgeschlagene Aktualisierungen von Bild-Keywords erneut versuchen |
| `-Language` | String | — | — | Named | — | Die Sprache für generierte Beschreibungen und Schlüsselwörter |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | Der Typ der LLM-Abfrage |
| `-Model` | String | — | — | Named | — | Das zu verwendende Modell oder Muster für KI-Operationen |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Das Zeitlimit in Sekunden für KI-Operationen |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | In der Sitzung gespeicherte alternative Einstellungen für KI-Präferenzen löschen |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nur Einstellungen in dauerhaften Präferenzen speichern, ohne die Sitzung zu beeinflussen |

## Examples

### Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Dieses Beispiel verarbeitet alle Bilder in C:\Photos und D:\Pictures sowie alle Unterverzeichnisse mit den Standardeinstellungen und einem Konfidenzschwellenwert von 0,5.

### Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
Invoke-ImageObjectsUpdate @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Dieses Beispiel verarbeitet nur neue Bilder und wiederholt zuvor fehlgeschlagene
in mehreren Verzeichnissen unter Verwendung der Positionsparametersyntax.

### Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `     -ConfidenceThreshold 0.7

```powershell
Invoke-ImageObjectsUpdate -ImageDirectories "C:\Photos" -UseGPU `
    -ConfidenceThreshold 0.7
```

Dieses Beispiel verwendet GPU-Beschleunigung mit einer höheren Konfidenzschwelle von 0,7 für genauere, aber weniger Objekterkennungen.

## Related Links

- [Invoke-ImageObjectsUpdate on GitHub](https://github.com/genXdev/genXdev)
