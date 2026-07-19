# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Escanea archivos o directorios en busca de malware usando Windows Defender.

## Description

* Realiza un análisis dirigido de archivos o directorios específicos utilizando la interfaz de línea de comandos de Windows Defender (MpCmdRun.exe).
* Puede analizar en modo solo detección o con corrección automática de amenazas habilitada.
* Devuelve verdadero si no se detectan amenazas, falso si se encuentran amenazas o el análisis falla.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Ruta al archivo o directorio que se va a escanear |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instruye a Windows Defender para que tome medidas contra amenazas |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Escanea el archivo especificado y muestra información detallada.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Escanea el archivo usando el alias y habilita la remediación.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Redirige la ruta del archivo al cmdlet mediante un alias.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
