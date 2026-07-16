# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Le chemin vers le fichier source à ouvrir |
| `-LineNo` | Int32 | — | — | 1 | `0` | Le numéro de ligne vers lequel naviguer |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array of keyboard inputs to send to the application |
| `-Code` | SwitchParameter | — | — | Named | — | L'IDE pour ouvrir le fichier dans |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Échapper les caractères de contrôle et les modificateurs |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Maintenir le focus clavier sur la fenêtre cible |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Délai entre différentes chaînes d'entrée en millisecondes |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
