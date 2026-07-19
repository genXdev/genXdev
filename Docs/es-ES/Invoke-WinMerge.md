# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Inicia WinMerge para comparar dos archivos lado a lado.

## Description

Lanza la aplicación WinMerge para comparar archivos fuente y destino en una vista de diferencias lado a lado. La función valida la existencia de ambos archivos de entrada y asegura que WinMerge esté instalado correctamente antes de iniciarlo. Proporciona funcionalidad opcional de espera para pausar la ejecución hasta que WinMerge se cierre.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Ruta al archivo fuente para comparar |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Ruta al archivo de destino a comparar |
| `-Wait` | SwitchParameter | — | — | Named | — | Espere a que WinMerge se cierre antes de continuar |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
