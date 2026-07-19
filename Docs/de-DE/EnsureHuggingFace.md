# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures the Hugging Face CLI is installed and functional.

## Description

Orchestriert die Installation von Python, pip und der Hugging Face CLI durch Aufrufen von EnsurePython und EnsurePip und anschließende Installation des huggingface_hub-Pakets. Speichert den CLI-Pfad in einer JSON-Datei und stellt sicher, dass alle Komponenten im System-PATH verfügbar sind. Gibt $true zurück, wenn erfolgreich; löst bei Fehlschlag Write-Error aus.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Python-Version, die sichergestellt werden soll |
| `-Timeout` | Int32 | — | — | Named | `600` | Timeout in Sekunden für Installationsprozesse |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt die Neuinstallation aller Komponenten |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Stellt sicher, dass Python 3.12, pip und die HuggingFace CLI installiert sind.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Erzwingt Neuinstallation mit Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Stellt die Installation mit einem 20-minütigen Timeout sicher.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
