# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Elimina un valor de preferencia del almacén de preferencias de GenXdev.

## Description

Elimina un valor de preferencia del almacén local y, opcionalmente, del almacén predeterminado. Proporciona dos conjuntos de parámetros: uno para la eliminación solo local y otro para eliminar tanto del almacén local como del predeterminado. Garantiza una sincronización adecuada al modificar el almacén predeterminado.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | El nombre de la preferencia a eliminar |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Cambie para eliminar también la preferencia de los valores predeterminados |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Use alternative settings stored in session for Data preferences like Language, Database paths, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Clear the session setting (Global variable) before retrieving |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ruta de base de datos para archivos de datos de preferencias |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | No utilice configuraciones alternativas almacenadas en sesión para las preferencias de datos como idioma, rutas de base de datos, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Elimina la preferencia "Tema" solo del almacenamiento local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Elimina la preferencia "Theme" tanto del almacenamiento local como del predeterminado.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
