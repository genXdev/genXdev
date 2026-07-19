# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass pip für die angegebene Python-Installation installiert und funktionsfähig ist.

## Description

Überprüft, ob pip für die angegebene Python-Ausführungsdatei verfügbar und funktionsfähig ist.
Wenn pip nicht verfügbar ist, wird versucht, es mit ensurepip zu installieren. Validiert
pip-Funktionalität durch Überprüfung der Version und grundlegender Operationen. Gibt $true zurück, wenn
pip bereit ist; löst bei Fehlschlag Write-Error aus.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Pfad zur Python-Ausführungsdatei |
| `-Timeout` | Int32 | — | — | Named | `300` | Timeout in Sekunden für die pip-Installation |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt die Neuinstallation/Aktualisierung von pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Stellt sicher, dass pip für die standardmäßige Python-Installation verfügbar ist.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Erzwingt die pip-Installation für eine bestimmte Python-Ausführungsdatei.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Stellt sicher, dass pip für eine bestimmte Python-Installation vorhanden ist, die von EnsurePython zurückgegeben wurde.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
