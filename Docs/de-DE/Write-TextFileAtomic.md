# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schreibt Text atomar in eine Datei, um Korruption zu verhindern.

## Description

* Atomares Schreiben: Verwendet eine Temp-Datei + Umbenennungsstrategie, um sicherzustellen, dass die Zieldatei nie in einem korrupten Zustand bleibt, wenn der Prozess unterbrochen wird.
* Wiederholungslogik: Wiederholt den Schreibvorgang bis zu MaxRetries Mal mit einer Verzögerung von RetryDelayMs Millisekunden zwischen den Versuchen.
* Kodierungsunterstützung: Akzeptiert einen System.Text.Encoding-Parameter zur Steuerung der Ausgabekodierung. Standard ist UTF-8.
* Entprellung: Wenn DebounceMs > 0 ist, werden aufeinanderfolgende schnelle Schreibvorgänge in dieselbe Datei zusammengefasst – nur die letzte Nutzlast wird geschrieben, sobald die Datei für DebounceMs ms nicht mehr berührt wurde.
* Verzeichniserstellung: Erstellt automatisch übergeordnete Verzeichnisse, falls sie nicht existieren.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Der Pfad zur zu schreibenden Datei. |
| `-Data` | String | — | — | 1 | — | Der Textinhalt, der in die Datei geschrieben werden soll. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Die maximale Anzahl der Wiederholungsversuche für den atomaren Schreibvorgang. Standardmäßig 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Die Verzögerung in Millisekunden zwischen Wiederholungsversuchen. Standard ist 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | Die Textkodierung, die beim Schreiben der Datei verwendet werden soll. Standard ist UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Wenn größer als 0, entprellt Schreibvorgänge in diese Datei. Standard ist 0 (deaktiviert). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Schreibt einen String atomar mit UTF-8-Kodierung in config.txt.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Leitet 50 Zeilen schnell weiter; nur die letzte Zeile wird nach einer
2-sekündigen Ruhephase gespeichert.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Writes a string to data.csv using ASCII encoding atomically.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Ein Hintergrundjob schreibt alle 100ms Zeitstempel, aber Debounce fasst sie zusammen – nur ein Schreibvorgang pro Sekunde erreicht tatsächlich die Festplatte.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
