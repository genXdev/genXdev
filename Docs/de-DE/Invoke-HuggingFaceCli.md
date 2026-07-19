# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die Hugging Face CLI mit den angegebenen Argumenten auf.

## Description

Ruft EnsureHuggingFace auf, um sicherzustellen, dass die CLI installiert ist, und führt dann die Hugging Face CLI mit den angegebenen Argumenten aus. Liest den CLI-Pfad aus $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json. Gibt die Befehlsausgabe als Zeichenfolge zurück; löst bei Fehler Write-Error aus.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Die Argumente, die an die Hugging Face CLI übergeben werden sollen |
| `-Timeout` | Int32 | — | — | 1 | `36000` | Timeout in Sekunden für CLI-Ausführung und Abhängigkeitsinstallation |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt die Neuinstallation der Hugging Face CLI |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

Ruft die CLI mit dem Befehl "login" auf und erzwingt eine Neuinstallation.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

Ruft die CLI mit dem Befehl "whoami" und einem Timeout von 300 Sekunden auf.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
