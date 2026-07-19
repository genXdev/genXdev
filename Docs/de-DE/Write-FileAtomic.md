# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schreibt Bytes atomar in eine Datei, um Korruption zu verhindern.

## Description

* Atomisches Schreiben: Verwendet eine Temp-Datei + Umbenennungsstrategie, um sicherzustellen, dass die Zieldatei nie in einem korrupten Zustand hinterlassen wird, falls der Prozess unterbrochen wird.
* Wiederholungslogik: Wiederholt das Schreiben bis zu MaxRetries Mal mit einer Verzögerung von RetryDelayMs Millisekunden zwischen den Versuchen.
* Entprellungsunterstützung: Wenn DebounceMs > 0, werden schnelle aufeinanderfolgende Schreibvorgänge in dieselbe Datei zusammengefasst – nur das letzte Nutzlast wird geschrieben, sobald die Datei für DebounceMs ms nicht berührt wurde.
* Verzeichniserstellung: Erstellt übergeordnete Verzeichnisse automatisch, falls sie nicht existieren.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Der Pfad zur zu schreibenden Datei. |
| `-Data` | Byte[] | — | — | 1 | — | Das Byte-Array, das in die Datei geschrieben werden soll. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Die maximale Anzahl der Wiederholungsversuche für den atomaren Schreibvorgang. Standardmäßig 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Die Verzögerung in Millisekunden zwischen Wiederholungsversuchen. Standard ist 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Wenn größer als 0, entprellt Schreibvorgänge in diese Datei. Standard ist 0 (deaktiviert). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Schreibt ein Byte-Array atomar mit Standard-Wiederholungseinstellungen in data.bin.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Schreibt schnell 100 Mal, aber nur die endgültige Nutzlast (100) wird nach einer 5-sekündigen Ruhephase auf die Festplatte geschrieben.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Schreibt mit benutzerdefiniertem Wiederholungsversuch: bis zu 10 Versuche mit 500 ms zwischen jedem.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
