# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ruft Prozesse ab, die offene Dateihandles zu bestimmten Dateien haben.

## Description

* Verwendet das Sysinternals-Tool handle.exe, um Prozesse zu identifizieren, die derzeit offene Handles zu einer oder mehreren angegebenen Dateien haben.
* Nützlich, um zu bestimmen, welche Prozesse Dateioperationen wie Löschen oder Ändern verhindern.
* Erfordert, dass handle.exe aus der Sysinternals-Suite installiert und im Systempfad verfügbar ist.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Pfad zur Datei bzw. zu den Dateien, die auf offene Handles überprüft werden sollen |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifiziert alle Prozesse, die offene Handles auf die angegebene Datei haben.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Überprüft mehrere Dateien über Pipeline-Eingabe auf Prozesse mit offenen Handles.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
