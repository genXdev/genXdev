# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> Ouvre un fichier source dans l'IDE préféré (Visual Studio Code ou Visual Studio).

## Description

Cette fonction ouvre un fichier source spécifié dans Visual Studio Code ou
Visual Studio. Elle peut naviguer directement vers un numéro de ligne spécifique et éventuellement
envoyer des entrées clavier à l'IDE après avoir ouvert le fichier. La fonction
essaiera de déterminer quel IDE utiliser en fonction du processus hôte actuel, des applications
en cours d'exécution ou de la sélection de l'utilisateur.

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

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
