# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Le répertoire, le chemin d'accès, ou le répertoire+masque de recherche |
| `-FindText` | String | ✅ | — | 1 | — | Le texte à rechercher (la sensibilité à la casse est contrôlée par le paramètre CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Le texte à remplacer correspond à |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
