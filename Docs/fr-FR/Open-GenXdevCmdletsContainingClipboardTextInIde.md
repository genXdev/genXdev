# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Ouvre les fichiers dans l'IDE qui contiennent le texte du presse-papiers

## Description

Le texte dans le presse-papier est utilisé pour effectuer une recherche dans tous les scripts GenXdev et, lorsqu'il est trouvé, ouvre ce fichier dans Code ou Visual Studio.

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Rechercher le texte du presse-papiers dans tous les scripts GenXdev |
| `-Copilot` | SwitchParameter | — | — | Named | — | Ajouter le fichier source à la session d'édition Copilot |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
