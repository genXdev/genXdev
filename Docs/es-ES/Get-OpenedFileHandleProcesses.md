# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera procesos que tienen identificadores de archivo abiertos para los archivos especificados.

## Description

* Utiliza la herramienta handle.exe de Sysinternals para identificar procesos que
  tienen actualmente identificadores abiertos a uno o más archivos especificados.
* Útil para determinar qué procesos están impidiendo operaciones con archivos
  como la eliminación o modificación.
* Requiere que handle.exe del conjunto de herramientas Sysinternals esté instalado y
  disponible en la ruta del sistema.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta al/los archivo(s) a verificar para mangos abiertos |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifica todos los procesos que tienen identificadores abiertos al archivo especificado.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Comprueba múltiples archivos a través de la entrada de pipeline para procesos con identificadores abiertos.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
