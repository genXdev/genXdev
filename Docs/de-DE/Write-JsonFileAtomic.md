# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schreibt ein Objekt atomar als JSON in eine Datei, um Korruption zu vermeiden.

## Description

* Atomisches Schreiben: Verwendet eine Temp-Datei- und Umbenennungsstrategie, um sicherzustellen, dass die Zieldatei bei Unterbrechung des Prozesses nie in einem korrupten Zustand hinterlassen wird.
* Wiederholungslogik: Wiederholt den Schreibvorgang bis zu MaxRetries Mal mit einer Verzögerung von RetryDelayMs Millisekunden zwischen den Versuchen.
* Objektunterstützung: Akzeptiert jedes Objekt, nicht nur Hashtable. Serialisiert über System.Text.Json mit Rückfall auf ConvertTo-Json für komplexe .NET-Typen, die nicht nativ serialisiert werden können.
* Debounce-Unterstützung: Wenn DebounceMs > 0 ist, werden schnelle aufeinanderfolgende Schreibvorgänge in dieselbe Datei zusammengefasst – nur die letzte Nutzlast wird geschrieben, sobald die Datei für DebounceMs Millisekunden nicht berührt wurde.
* Verzeichniserstellung: Erstellt automatisch übergeordnete Verzeichnisse, falls sie nicht existieren.

## Syntax

```powershell
Write-JsonFileAtomic [-FilePath] <string> [[-Data] <Object>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [-Depth <int>] [-Compress] [-AsArray] [-EnumsAsStrings] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Der Pfad zur zu schreibenden Datei. |
| `-Data` | Object | — | — | 1 | — | Das zu serialisierende Objekt als JSON und in die Datei schreiben. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Die maximale Anzahl der Wiederholungsversuche für den atomaren Schreibvorgang. Standardmäßig 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Die Verzögerung in Millisekunden zwischen Wiederholungsversuchen. Standard ist 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Wenn größer als 0, entprellt Schreibvorgänge in diese Datei. Standard ist 0 (deaktiviert). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Die maximale Tiefe für die JSON-Serialisierung. Standard ist 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | Sie sind ein hilfreicher Assistent, der darauf ausgelegt ist, JSON auszugeben. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | Sie sind ein hilfreicher Assistent, der darauf ausgelegt ist, JSON auszugeben. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Bietet eine alternative Serialisierungsoption, die alle Enumerationen in ihre Zeichenfolgendarstellung umwandelt. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Schreibt eine Hashtable als eingerücktes JSON atomar in config.json.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Schreibt Prozessobjekte atomar als komprimiertes JSON.

## Related Links

- [Write-JsonFileAtomic on GitHub](https://github.com/genXdev/genXdev)
