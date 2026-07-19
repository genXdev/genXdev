# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Marca archivos o directorios para su eliminación durante el siguiente inicio del sistema.

## Description

* Utiliza la API de Windows para marcar archivos para su eliminación en el próximo reinicio.
* Maneja archivos bloqueados intentando primero renombrarlos a nombres temporales y rastrea todos los movimientos para mantener la integridad del sistema de archivos.
* Si el renombrado falla, se puede usar el parámetro -MarkInPlace para marcar archivos en su ubicación original.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Ruta(s) a archivos/directorios a marcar para eliminación |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Marca archivos para eliminación sin renombrar |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Marca un archivo bloqueado para su eliminación durante el próximo reinicio del sistema.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Marca múltiples archivos para eliminar, usando MarkInPlace para aquellos que no se puedan renombrar.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
