# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Schreibt Text atomar in eine Datei, um Beschädigungen zu vermeiden.

## Description

* Atomares Schreiben: verwendet eine temporäre Datei + Umbenennungsstrategie, um sicherzustellen, dass die Zieldatei nie in einem korrupten Zustand zurückbleibt, falls der Prozess unterbrochen wird.
* Wiederholungslogik: Wiederholt das Schreiben bis zu MaxRetries Mal mit einer Verzögerung von RetryDelayMs Millisekunden zwischen den Versuchen.
* Kodierungsunterstützung: akzeptiert einen System.Text.Encoding-Parameter zur Steuerung der Ausgabekodierung. Standardmäßig UTF-8.
* Entprellunterstützung: wenn DebounceMs > 0, werden schnelle aufeinanderfolgende Schreibvorgänge in dieselbe Datei zusammengefasst – nur die letzte Nutzlast wird geschrieben, sobald die Datei für DebounceMs ms nicht berührt wurde.
* Verzeichniserstellung: erstellt automatisch übergeordnete Verzeichnisse, falls diese nicht existieren.

## Syntax

```powershell
Write-TextFileAtomic -FilePath <String> [[-Data] <String>] [-DebounceMs <Int32>] [-Encoding <Text.Encoding>] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Der Pfad zur Datei, in die geschrieben werden soll. |
| `-Data` | String | — | — | 1 | — | Der Textinhalt, der in die Datei geschrieben werden soll. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Die maximale Anzahl von Wiederholungsversuchen für den atomaren Schreibvorgang. Standard ist 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Die Verzögerung in Millisekunden zwischen den Wiederholungsversuchen. Standard ist 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | Die beim Schreiben der Datei zu verwendende Textcodierung. Standard ist UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Wenn größer als 0, entprellt das Schreiben in diese Datei. Standardwert ist 0 (deaktiviert). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Schreibt unter Verwendung der UTF-8-Kodierung atomar eine Zeichenfolge in config.txt.

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
2-sekündigen Ruhephase beibehalten.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Schreibt einen String atomar unter Verwendung der ASCII-Codierung in data.csv.

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

Ein Hintergrundjob schreibt jede 100 ms Zeitstempel, aber Debounce fasst sie zusammen — nur ein Schreibvorgang pro Sekunde erreicht tatsächlich die Festplatte.

## Parameter Details

### `-FilePath <String>`

> Der Pfad zur Datei, in die geschrieben werden soll.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <String>`

> Der Textinhalt, der in die Datei geschrieben werden soll.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Die maximale Anzahl von Wiederholungsversuchen für den atomaren Schreibvorgang. Standard ist 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> Die Verzögerung in Millisekunden zwischen den Wiederholungsversuchen. Standard ist 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Encoding <Text.Encoding>`

> Die beim Schreiben der Datei zu verwendende Textcodierung. Standard ist UTF-8.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Wenn größer als 0, entprellt das Schreiben in diese Datei. Standardwert ist 0 (deaktiviert).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/de-DE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/de-DE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/de-DE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/de-DE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/de-DE/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/de-DE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/de-DE/Write-JsonFileAtomic.md)
