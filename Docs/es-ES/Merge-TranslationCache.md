# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gestiona la caché de traducción persistente con escrituras por lotes en disco por idioma.

## Description

Mantiene una caché de traducción en memoria con ámbito de módulo para Get-TextTranslation.
La caché se divide en archivos JSON por idioma bajo
$env:LOCALAPPDATA\GenXdev.PowerShell\. Las llamadas para añadir entradas se agrupan:
las escrituras en disco solo ocurren cada 100 mutaciones por idioma, o cuando se llama
-PersistNow. -PersistNow también limpia la caché en memoria para evitar un crecimiento
ilimitado entre lotes de procesamiento.

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
| `-GetCache` | SwitchParameter | — | — | Named | — | Return the in-memory cache hashtable *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | código de idioma BCP 47 para la entrada de caché *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | El texto fuente para almacenar en caché *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | El texto traducido para almacenar *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Escribir todas las cachés sucias al disco y limpiar la memoria *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Clear the in-memory cache and delete all disk files *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Elimina las entradas no traducidas de todos los cachés de idioma en el disco *(Parameter set: )* |

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

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
