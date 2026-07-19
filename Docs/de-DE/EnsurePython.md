# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass Python installiert und im System-PATH verfügbar ist.

## Description

Überprüft, ob Python installiert und über das System-PATH zugänglich ist. Falls Python nicht gefunden wird, wird versucht, es mit winget (Windows Package Manager) zu installieren. Unterstützt spezifische Versionsanforderungen und gibt Fortschrittsfeedback während der Installation. Gibt den Pfad zur Python-Executable zurück, wenn erfolgreich; löst bei Fehlschlag Write-Error aus.

Diese Priorität liegt auf vorhandenen Python-Installationen, kann aber bei Bedarf eine Neuinstallation erzwingen. Überprüft die Python-Funktionalität durch Abfrage der Versionsausgabe und stellt sicher, dass die Installation ordnungsgemäß zugänglich ist.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Python-Version, die installiert sein muss |
| `-Timeout` | Int32 | — | — | Named | `600` | Timeout in seconds for Python installation |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt Neuinstallation von Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Stellt sicher, dass Python 3.12 mit Standardeinstellungen installiert ist.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Installiert Python 3.11 mit erweitertem Timeout und gibt den ausführbaren Pfad zurück.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Erzwingt die Neuinstallation von Python 3.12 mit detaillierten Fortschrittsinformationen.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Erzwingt die Installation von Python 3.10, auch wenn eine andere Version existiert.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
