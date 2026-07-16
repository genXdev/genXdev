# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
