# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Elimina archivos o directorios con múltiples mecanismos de respaldo para un borrado confiable.

## Description

Esta función proporciona una manera robusta de eliminar archivos y directorios al intentar múltiples métodos de eliminación en secuencia:
1. Eliminación directa mediante métodos de System.IO para el mejor rendimiento
2. Cmdlet Remove-Item consciente del proveedor de PowerShell como alternativa
3. Marcar para eliminación en el próximo reinicio del sistema si otros métodos fallan
Esto garantiza la máxima fiabilidad al eliminar elementos en diferentes proveedores.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | La ruta hacia el elemento a eliminar |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
