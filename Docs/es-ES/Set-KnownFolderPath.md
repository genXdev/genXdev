# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Modifica la ruta física de una carpeta conocida de Windows.

## Description

Utiliza la API Shell32 de Windows para reubicar carpetas del sistema como Documentos, Descargas, Escritorio u otras carpetas conocidas de Windows a una nueva ubicación. La función valida que la ruta de destino exista, busca el GUID único de la carpeta en el registro completo de carpetas conocidas y usa la API SHSetKnownFolderPath para realizar la reubicación. Los casos de uso comunes incluyen mover carpetas de usuario a una unidad diferente para gestionar el espacio o la organización. Tenga precaución al mover carpetas críticas del sistema, ya que esto puede afectar la estabilidad del sistema.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Carpeta conocida a modificar |
| `-Path` | String | ✅ | — | 1 | — | Nueva ruta para la carpeta conocida |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
