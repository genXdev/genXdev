# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Administra la caché de traducción persistente con escrituras por lotes en disco por idioma.

## Description

Mantiene una caché de traducción en memoria con ámbito de módulo para Get-TextTranslation.
La caché se divide en archivos JSON por idioma bajo
$env:LOCALAPPDATA\GenXdev.PowerShell\. Las llamadas para agregar entradas se agrupan:
las escrituras en disco solo ocurren cada 100 mutaciones por idioma, o cuando se llama a -PersistNow.
-PersistNow también limpia la caché en memoria para evitar un crecimiento ilimitado
en lotes de procesamiento.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Devuelve la tabla hash de la caché en memoria *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Código de idioma BCP 47 para la entrada de caché *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | El texto fuente para guardar en caché *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | .PARÁMETRO DisplayName

Especifica el nombre para mostrar del buzón de correo del recurso. El nombre para mostrar es el que aparece en los libros de direcciones de Exchange y en otros lugares. Este parámetro puede contener hasta 256 caracteres.

Cuando se crea un buzón de correo del recurso, puede que vea un nombre para mostrar generado automáticamente si no se especifica uno mediante este parámetro. El nombre para mostrar generado automáticamente es el valor del parámetro Name (el nombre del alias del usuario de Active Directory). Si cambia el nombre para mostrar, el valor de Name no se modifica. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Escribir todas las cachés sucias al disco y limpiar la memoria *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Limpiar la caché en memoria y eliminar todos los archivos del disco *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Eliminar las entradas no traducidas de todas las cachés de idioma en el disco *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> Devuelve la tabla hash de la caché en memoria

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> Código de idioma BCP 47 para la entrada de caché

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> El texto fuente para guardar en caché

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> .PARÁMETRO DisplayName

Especifica el nombre para mostrar del buzón de correo del recurso. El nombre para mostrar es el que aparece en los libros de direcciones de Exchange y en otros lugares. Este parámetro puede contener hasta 256 caracteres.

Cuando se crea un buzón de correo del recurso, puede que vea un nombre para mostrar generado automáticamente si no se especifica uno mediante este parámetro. El nombre para mostrar generado automáticamente es el valor del parámetro Name (el nombre del alias del usuario de Active Directory). Si cambia el nombre para mostrar, el valor de Name no se modifica.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> Escribir todas las cachés sucias al disco y limpiar la memoria

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> Limpiar la caché en memoria y eliminar todos los archivos del disco

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> Eliminar las entradas no traducidas de todas las cachés de idioma en el disco

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/Test-DeepLinkImageFile.md)
