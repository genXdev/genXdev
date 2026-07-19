# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Installs and configures Visual Studio Code with recommended extensions.

## Description

Überprüft, ob Visual Studio Code installiert ist, und installiert es gegebenenfalls mit WinGet.
Konfiguriert Benutzereinstellungen, Tastenkombinationen und installiert empfohlene Erweiterungen aus der Arbeitsbereichskonfiguration. Richtet außerdem PSGallery als vertrauenswürdige Quelle ein und konfiguriert spezifische Erweiterungseinstellungen.

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
